interface ICounter {
    function count() external view returns(uint);
    function inc() external;
}

contract CallCounter {
    uint public count;

    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}


*/interface ICounter {
    function count() external view returns (uint);
    function inc() external;
}

contract MyContract {
    function incCounter(address _counter) external {
        ICounter(_counter).inc();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}/*
