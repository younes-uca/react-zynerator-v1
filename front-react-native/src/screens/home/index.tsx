import React from 'react';
import type { PropsWithChildren } from 'react';
import {
  Dimensions,
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  TouchableOpacity,
  useColorScheme,
  View,
} from 'react-native';

import {
  Colors,
  DebugInstructions,
  Header,
  LearnMoreLinks,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';
import { COLORS } from '../../theme/colors';
import CardItem from '../../components/card-item';
import SearchIcon from '../../assets/icons/search.svg';

const Home = (): JSX.Element => {
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    // backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
    backgroundColor: COLORS.white,
  };
  return (
    <SafeAreaView style={[backgroundStyle, { flex: 1 }]}>
      <StatusBar
        barStyle={isDarkMode ? 'light-content' : 'dark-content'}
        backgroundColor={backgroundStyle.backgroundColor}
      />
      <View style={{justifyContent: "flex-end"}}>
        <TouchableOpacity activeOpacity={.7} style={{ marginHorizontal: 10, padding: 3, zIndex: 1 }}>
          <SearchIcon height={15} width={15} color={COLORS.primary} />
        </TouchableOpacity>
      </View>
      <ScrollView
        showsVerticalScrollIndicator={false}
        showsHorizontalScrollIndicator={false}
        contentInsetAdjustmentBehavior="automatic"
        style={[backgroundStyle, styles.scrollView]}
        contentContainerStyle={{}}>

        <View
          style={{
            // backgroundColor: isDarkMode ? Colors.black : Colors.white,
          }}>
          <CardItem />
          <CardItem />
          <CardItem />
        </View>
      </ScrollView>
    </SafeAreaView>
  )
}

export default Home

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    paddingTop: StatusBar.currentHeight || 42,
    backgroundColor: COLORS.secondary,
    padding: 8,
  },
  scrollView: {
    paddingHorizontal: 15
  }

});