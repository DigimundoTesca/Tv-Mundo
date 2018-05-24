from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

class LogInForm(forms.Form):
	username = forms.CharField()
	password = forms.CharField()

class RegisterForm(UserCreationForm):

	class Meta:
		model = User
		fields = [
			'username',
			'email',
			'password1',
			'password2',
			]
		labels = {
			'username': 'Nombre de usuario',
			'email': 'Correo' ,
			'password1':'Contraseña',
			'password2': 'Confirmar contraseña',
		}
