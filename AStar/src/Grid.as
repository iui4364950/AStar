package
{
	public class Grid
	{
		private var _startNode:Node;//开始节点
		private var _endNode:Node;//目标节点
		private var _nodes:Array;//节点数组
		private var _numCols:int;//列数
		private var _numRows:int;//行数
		
		public function Grid(numCols:int, numRows:int)
		{
			_numCols=numCols;
			_numRows=numRows;
			_nodes=new Array();
			for (var i:int=0; i < _numCols; i++)
			{
				_nodes[i]=new Array();
				for (var j:int=0; j < _numRows; j++)
				{
					_nodes[i][j]=new Node(i, j);
				}
			}
		}
		
		public function getNode(x:int, y:int):Node
		{
			return _nodes[x][y] as Node;
		}
		
		
		public function setEndNode(x:int, y:int):void
		{
			_endNode=_nodes[x][y] as Node;
		}
		
		
		public function setStartNode(x:int, y:int):void
		{
			_startNode=_nodes[x][y] as Node;
		}
		
		
		public function setWalkable(x:int, y:int, value:Boolean):void
		{
			_nodes[x][y].walkable=value;
		}
		
		
		public function get endNode():Node
		{
			return _endNode;
		}
		
		
		public function get numCols():int
		{
			return _numCols;
		}
		
		
		public function get numRows():int
		{
			return _numRows;
		}
		
		
		public function get startNode():Node
		{
			return _startNode;
		}
	}
}