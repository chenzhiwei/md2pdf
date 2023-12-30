import React from "react";
import Markdown from "react-remarkable";

export default ({ source, children }) => {
  return (
      <Markdown
        source={source}
        options={{ html: true, linkify: true }}
      >
        {children}
      </Markdown>
  );
};
