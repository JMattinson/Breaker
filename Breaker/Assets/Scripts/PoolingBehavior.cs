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
    public Vector3DataList Spawns;

    IEnumerator Start()
    {

        wfsObj = new WaitForSeconds(seconds);
        while (canRun)
        {
            Instantiate(poolList[i]);
            yield return wfsObj;
            poolList[i].position = Spawns.vector3List[i].value;
            print("Spawning" + i);
            poolList[i].GameObject().SetActive(true);
            i++;
            if (i > poolList.Count - 1)
            {
                i = 0;
                //canRun = false;

            }


        }



    }
}
