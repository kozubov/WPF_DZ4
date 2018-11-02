using WPF_4.Helpers;
using WPF_4.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WPF_4.ViewModel
{
    public class MainWindowViewModel : ObservableObject
    {
        public ObservableCollection<Photo> Photos { set; get; }
        private Photo selectedPhoto;

        public Photo SelectedPhoto
        {
            get { return selectedPhoto; }
            set
            {
                selectedPhoto = value;
                OnPropertyChanged("SelectedPhoto");
            }
        }

        public MainWindowViewModel()
        {
            Photos = new ObservableCollection<Photo>();
        }

        private RelayCommand addImageCommand;
        private RelayCommand deleteImageCommand;

        public RelayCommand AddImageCommand
        {
            set { addImageCommand = value; }
            get
            {
                return addImageCommand ?? new RelayCommand(
                    obj =>
                    {
                        OpenFileDialog fileDialog = new OpenFileDialog();
                        if (fileDialog.ShowDialog() == true)
                        {
                            Photo photo = new Photo { ImageSource = fileDialog.FileName };
                            FileInfo fi = new FileInfo(fileDialog.FileName);
                            photo.FileName = fi.Name;
                            photo.FileSize = (int)fi.Length / 1024;
                            Photos.Add(photo);
                        }

                    }
                    );
            }
        }

        public RelayCommand DeleteImageCommand
        {
            set { deleteImageCommand = value; }
            get
            {
                return deleteImageCommand ?? new RelayCommand(
                    obj =>
                    {
                        Photo photo = obj as Photo;
                        if (photo != null)
                        {
                            Photos.Remove(photo);
                        }
                    },
                    obj =>
                    {
                        return Photos.Count > 0;
                    }
                    );
            }
        }

    }
}
