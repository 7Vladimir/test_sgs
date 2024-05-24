using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    //В моей практике не было задач на тему WPF, так что не судите строго это моя первая задача
    
    private Dictionary<string, List<string>> cityToPlants; //связывает города с соответствующими цехами
    private Dictionary<string, List<string>> plantToEmployees; //связывает цехи с соответствующими сотрудниками
    private Dictionary<string, List<string>> employeeToBrigades;
    
    public MainWindow()
    {
        InitializeComponent();
        InitializeData();

        //При загрузке формы мы задаем источник данных для CityComboBox
        CityComboBox.ItemsSource = cityToPlants.Keys;
        
        // Заполнение списка бригад при загрузке формы
        BrigadeComboBox.ItemsSource = GetBrigades();
    }
    
    private void InitializeData()
    {
        cityToPlants = new Dictionary<string, List<string>>
        {
            { "Город1", new List<string> { "Цех1", "Цех2" } },
            { "Город2", new List<string> { "Цех3", "Цех4" } }
        };

        plantToEmployees = new Dictionary<string, List<string>>
        {
            { "Цех1", new List<string> { "Сотрудник1", "Сотрудник2" } },
            { "Цех2", new List<string> { "Сотрудник3", "Сотрудник4" } },
            { "Цех3", new List<string> { "Сотрудник5", "Сотрудник6" } },
            { "Цех4", new List<string> { "Сотрудник7", "Сотрудник8" } }
        };
    }

    //Когда пользователь выбирает город (CityComboBox_SelectionChanged), мы обновляем список цехов.
    private void CityComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        string selectedCity = CityComboBox.SelectedItem as string;
        if (selectedCity != null)
        {
            PlantComboBox.ItemsSource = cityToPlants[selectedCity];
            PlantComboBox.SelectedIndex = -1;
            EmployeeComboBox.ItemsSource = null;
        }
    }

    //Когда пользователь выбирает цех (PlantComboBox_SelectionChanged), мы обновляем список сотрудников.
    private void PlantComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        string selectedPlant = PlantComboBox.SelectedItem as string;
        if (selectedPlant != null)
        {
            EmployeeComboBox.ItemsSource = plantToEmployees[selectedPlant];
            EmployeeComboBox.SelectedIndex = -1;
        }
    }
    
    // Возвращаем список бригад
    private List<string> GetBrigades()
    {
        return new List<string> { "Бригада1", "Бригада2", "Бригада3" };
    }
}