using UnityEngine;
using System.Collections;

public class TestMesh : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
		MeshFilter meshFilter = gameObject.GetComponent<MeshFilter>();
		Mesh mesh = meshFilter.mesh;

		Vector3[] vertices = new Vector3[3];
		int[] triangles = new int[3];
		Color[] colors = new Color[3];

		vertices[0] = new Vector3(-0.8f,0.8f,0);
		vertices[1] = new Vector3(0.8f,0.8f,0);
		vertices[2] = new Vector3(0f,-0.8f,0);

		triangles[0] = 0;
		triangles[1] = 1;
		triangles[2] = 2;

		colors[0] = new Color(1,0,0,1);
		colors[1] = new Color(0,1,0,1);
		colors[2] = new Color(0,0,1,1);

		mesh.vertices = vertices;
		mesh.triangles = triangles;
		mesh.colors = colors;
		mesh.uv = new Vector2[] {new Vector2(0, 0), new Vector2(0, 5), new Vector2(5, 5)};
		//mesh.uv
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
