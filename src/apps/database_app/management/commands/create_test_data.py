from django.core.management.base import BaseCommand

from apps.database_app.models import TestModel


class Command(BaseCommand):
    help = 'Create test data'
    
    def handle(self, *args, **options):
        for user_index in range(10):
            TestModel.objects.create(name=f'name_{user_index}',
                                     age=user_index)
        
        self.stdout.write(self.style.SUCCESS('Test data created successfully'))