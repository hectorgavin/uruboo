// Place your Spring DSL code here

import com.uruboo.marshallers.CustomObjectMarshaller
import com.uruboo.marshallers.UserMarshaller
import com.uruboo.marshallers.TaskMarshaller
import com.uruboo.marshallers.CommentMarshaller
import com.uruboo.marshallers.CustomerAccountMarshaller
import com.uruboo.marshallers.TaskUpdateLogMarshaller
import com.uruboo.marshallers.DateMarshaller

beans = {
    customObjectMarshaller(CustomObjectMarshaller) {
        marshallers = [
            new UserMarshaller(),
            new TaskMarshaller(),
            new CommentMarshaller(),
            new CustomerAccountMarshaller(),
            new TaskUpdateLogMarshaller(),
            new DateMarshaller()
        ]
    }
}
