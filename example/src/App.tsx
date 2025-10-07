import { Text, View, StyleSheet } from 'react-native';
import { multiply, add } from 'react-native-device-greeter';

const multiplyResult = multiply(3, 7);
const addResult = add(3, 7);

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Mulitply: {multiplyResult}</Text>
      <Text>Add: {addResult}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
