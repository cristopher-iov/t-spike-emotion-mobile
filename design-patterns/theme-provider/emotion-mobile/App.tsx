import { useState } from 'react';
import styled from '@emotion/native';
import { Button } from 'react-native';
import { StatusBar } from 'expo-status-bar';
import { useTheme, ThemeProvider } from '@emotion/react';

import { themeDark, themeLight } from './theme';

type ThemeType = {
  readonly background?: string;
  readonly text?: string;
  readonly buttonBorder?: string;
  readonly buttonBg?: string;
  readonly buttonText?: string;
};

type StyledProps = {
  readonly theme: ThemeType;
};

const AppContainer = styled.View<StyledProps>`
  height: 100vh;
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 3rem;
  background-color: ${(props) => props.theme.background};
`;

const Title = styled.Text<StyledProps>`
  padding: 8px;
  font-size: 24px;
  color: ${(props) => props.theme.text};
`;

const SubTitle = styled(Title)`
  font-size: 18px;
`;

function Container(props: { isDark: boolean; onPress: () => void }) {
  const { isDark, onPress } = props;

  const theme = useTheme();

  return (
    <AppContainer theme={theme}>
      <Title theme={theme}>Hello {isDark ? 'Dark' : 'Light'} Mode</Title>
      <SubTitle theme={theme}>We will make some magic happen!</SubTitle>
      <Button
        onPress={onPress}
        title={`Change to ${isDark ? 'light' : 'dark'} mode`}
      />
    </AppContainer>
  );
}

export default function App() {
  const [isDark, setIsDark] = useState(false);

  const onToggleTheme = () => setIsDark((prev) => !prev);

  return (
    <ThemeProvider theme={isDark ? themeDark : themeLight}>
      <StatusBar style="auto" />
      <Container isDark={isDark} onPress={onToggleTheme} />
    </ThemeProvider>
  );
}
