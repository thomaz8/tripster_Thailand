<script type="text/javascript" src="{{ elixir('assets/js/vendor.js') }}"></script>
<script type="text/javascript" src="{{ elixir('assets/js/app.js') }}"></script>
<script>
    window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
    ]); ?>
</script>