using System;
using System.Collections.Generic;

class G
{
    // Declaration of functions
    private int n;
    private List<int>[] adj;

    private void Connections(int w, bool[] visited, int[] disc, int[] low, int[] par)
    {
        int t = 0;
        // Mark current node as visited
        visited[w] = true;
        disc[w] = low[w] = ++t;
        // Go through all adjacent vertices
        foreach (int x in adj[w])
        {
            if (!visited[x])
            {
                par[x] = w;
                Connections(x, visited, disc, low, par);
                low[w] = Math.Min(low[w], low[x]);
                // If the lowest vertex reachable from subtree under x is below w in DFS tree, then w-x is a connection
                if (low[x] > disc[w])
                    Console.WriteLine($"{w} {x}");
            }
            else if (x != par[w])
                low[w] = Math.Min(low[w], disc[x]);
        }
    }

    public G(int n)
    {
        // Constructor: Initialize the graph with 'n' vertices
        this.n = n;
        adj = new List<int>[n];
        for (int i = 0; i < n; i++)
        {
            adj[i] = new List<int>();
        }
    }

    // Function to add edges to the graph
    public void AddEdge(int w, int x)
    {
        adj[x].Add(w); // Add 'w' to the adjacency list of 'x'
        adj[w].Add(x); // Add 'x' to the adjacency list of 'w'
    }

    // Function to find connections in the graph
    public void Con()
    {
        // Mark all the vertices as unvisited
        bool[] visited = new bool[n];
        int[] disc = new int[n];
        int[] low = new int[n];
        int[] par = new int[n];

        for (int i = 0; i < n; i++)
        {
            par[i] = -1;
            visited[i] = false;
        }

        // Call the function 'Connections()' to find edge connections
        for (int i = 0; i < n; i++)
        {
            if (!visited[i])
                Connections(i, visited, disc, low, par);
        }
    }
}

class Program
{
    static void Main()
    {
        Console.WriteLine("\nConnections in the first graph \n");
        G g1 = new G(5);
        g1.AddEdge(4, 2);
        g1.AddEdge(3, 2);
        g1.AddEdge(2, 1);
        g1.AddEdge(0, 1);
        g1.AddEdge(1, 4);
        g1.Con();
    }
}
