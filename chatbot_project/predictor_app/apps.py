from django.apps import AppConfig
from django.conf import settings
import os
import pickle

class PredictorAppConfig(AppConfig):
    name = 'predictor_app'
    path_model = os.path.join(settings.MODELS, 'k.sav')
    with open(path_model, 'rb') as pickled:
        model = pickle.load(pickled)

    path_vec = os.path.join(settings.MODELS, 'vec.sav')
    with open(path_vec, 'rb') as pickled:
        vectorizer = pickle.load(pickled)