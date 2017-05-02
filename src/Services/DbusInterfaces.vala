/*
 * Copyright (c) 2011-2017 elementary LLC. (http://launchpad.net/wingpanel)
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 */

namespace Privacy.Services.DBusInterfaces {
    [DBus (name = "org.freedesktop.DBus.Properties")]
    public interface Properties : Object {
        public abstract Variant Get (string interface, string propname) throws IOError;
        public abstract void Set (string interface, string propname, Variant value) throws IOError;
        public signal void PropertiesChanged (string changed, HashTable<string, Variant> propertiesm, string[] array);
    }

    [DBus (name = "org.freedesktop.GeoClue2.Manager")]
    interface GeoclueManager : GLib.Object {
        public abstract bool InUse { get; }
        public abstract string[] GetClientList () throws IOError;
    }
}
