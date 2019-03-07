import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { Glyphicon, Nav, Navbar, NavItem } from 'react-bootstrap';
import { LinkContainer } from 'react-router-bootstrap';
import './NavMenu.css';

export class NavMenu extends Component {
  displayName = NavMenu.name

  render() {
    return (
      <Navbar inverse fixedTop fluid collapseOnSelect>
        <Navbar.Header>
          <Navbar.Brand>
            <Link to={'/'}>AEImageHub</Link>
          </Navbar.Brand>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav>
            <LinkContainer to={'/'} exact>
              <NavItem>
                <Glyphicon glyph='home' /> Home
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/backend_test/Upload'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> Upload
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/backend_test/User'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> User
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/backend_test/Project'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> Project
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/backend_test/Log'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> Log
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/backend_test/Tag'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> Tag
              </NavItem>
            </LinkContainer>
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}
