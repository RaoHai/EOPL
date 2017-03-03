### Inductive Sets of Data

* 1.1 Recursively Specified Data
  * 1.1.1 Inductive Specification
    * rule: a natura number n is in S if and only if 
    the statement can be derived from the axioms by using the rules of 
    inference finitely many times.


 * 1.2 Follow the Grammar!
  * 当定义一个处理递归定义的数据的方法时，函数的结构应当 *参照* 数据的结构。
  * 更严谨的描述：
    * 为语法中的每一个非终结符编写一个过程。此过程只负责处理与该非终结符对应的数据，而不做其他任何事情。
    * 在每一个过程中，对每一个对应于非终结符的产生式编写一个选择符。你可能需要额外的 case 结构。对于出现在右侧的每个非终结符，对该非终结符的过程书写递归调用。
