vcl 4.0;
import std;
import directors;

# Default backend definition. Points to the application container.
{% for relationship in relationships %}
{% for instance in relationship.instances %}
backend {{relationship.name}}_{{loop.index}} {
    .host = "{{instance.host}}";
    .port = "{{instance.port}}";
}
{% endfor %}
{% endfor %}

# Access control list for PURGE requests.
# Here you need to put the IP address of your web server
acl purge {
    {% for relationship in relationships %}
    {% for instance in relationship.instances %}
        "{{instance.host}}";
    {% endfor %}
    {% endfor %}
}

sub vcl_init {
    {% for relationship in relationships %}
    new {{relationship.name}} = directors.random();
    {% for instance in relationship.instances %}
    {{relationship.name}}.add_backend({{relationship.name}}_{{loop.index}}, 1.0);
    {% endfor %}
    {% endfor %}
}

# Your VCL configuration here.
