import { TurboModuleRegistry, type TurboModule } from 'react-native';

export interface Spec extends TurboModule {
  // multiply(a: number, b: number): number;
  // add(a: number, b: number): number;
  hello(): void;
}

export default TurboModuleRegistry.getEnforcing<Spec>('DeviceGreeter');
