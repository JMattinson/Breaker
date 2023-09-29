using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

[RequireComponent(typeof(GameObject))]
public class PoolingBehavior : MonoBehaviour
{

    public List<Transform> poolList;

    public float seconds = 2f;
    private WaitForSeconds wfsObj;
    private int i;
    public bool canRun = true;
    public int spawnLimit;
    public int curSpawned = 0;
    public Vector3DataList Spawns;

    IEnumerator Start()
    {
        spawnLimit = poolList.Count-1;

        wfsObj = new WaitForSeconds(seconds);
        while (canRun)
        {
            
            CheckLimit();
            if (i > poolList.Count - 1)
            {
                i = 0;
            }
            Instantiate(poolList[i]);
            yield return wfsObj;
            print("Spawning" + i);
            
               
                if (poolList[i].GameObject().activeSelf==false)
                {

                    poolList[i].position = Spawns.vector3List[i].value;
                    
                    poolList[i].GameObject().SetActive(true);
                    
                    curSpawned++;
                }
                i++;
            }
            
           
        
    }
    public void EnemyDespawned()
    {
        curSpawned--;
    }

    public void CheckLimit()
    {
        if (curSpawned>=spawnLimit)
        {
            canRun = false;
        }
    }
}
