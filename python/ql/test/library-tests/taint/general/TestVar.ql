import python
import semmle.python.security.TaintTest
import TaintLib


from EssaVariable var, TaintedNode n
where n.getNode().asVariable() = var
select 
    var.getDefinition().getLocation().toString(), var.getRepresentation(), n.getLocation().toString(), "Taint " + n.toString()
