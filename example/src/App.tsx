import { useEffect } from 'react';
import { Text, View, StyleSheet } from 'react-native';
import { hello } from 'react-native-device-greeter';

// const multiplyResult = multiply(3, 7);
// const addResult = add(3, 7);

export default function App() {
  useEffect(() => {
    hello();
  }, []);
  return (
    <View style={styles.container}>
      <Text>Hello owkrs</Text>
      {/* <Text>Mulitply: {multiplyResult}</Text>
      <Text>Add: {addResult}</Text> */}
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
