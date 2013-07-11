{%script%}
    document.getElementById('btn').onclick = function() {
        require.async(['/static/photo/ui/respClick/respClick.js'], function(resp) {
            resp.hello();
        });
    };
{%/script%}
{%block%}
<div>
    aaa;
        bbbb;
            ccc;
</div>
{%/block%}