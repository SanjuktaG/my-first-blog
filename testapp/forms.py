from django import forms
from .models import Post

# We need to tell Django that this form is a ModelForm (so Django will do some magic for us)
class PostForm(forms.ModelForm):

    # Meta where we tell Django which model should be used to create this form (model = Post).
    class Meta:
        model = Post
        fields = ('title', 'text',)
