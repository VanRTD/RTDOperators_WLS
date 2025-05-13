/**
 * 
 */
package com.rtd.operator.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.rtd.utils.ResourceBundleUtils;
import com.rtd.utils.StackTraceUtil;

/**
 * @author Justin Hancock This class doesn't really need to be abstract as we
 *         have no abstract methods within it to force subclasses to implement,
 *         but it may in the future.
 */
public class AbstractDAO {
  private DataSource dataSource;
  private String jndiName = "";

  private static final Logger LOG = LogManager.getLogger(AbstractDAO.class.getName());

  public AbstractDAO() {
    super();
    initialize();
  }

  public DataSource getDataSource() throws Exception {
    try {
      Context ctx = new InitialContext();
      dataSource = (DataSource) ctx.lookup(this.jndiName);
    } catch (Exception e) {
      LOG.error(StackTraceUtil.getStackTrace(e));
      throw e;
    }

    return dataSource;
  }

  /**
   * Get the Initial context (JNDI Reference).
   *
   * @return
   * @throws Exception
   */
  /*
   * public Context getInitialContext() throws Exception { String lookupServer =
   * serverName; java.util.Hashtable<String, String> ht = new
   * java.util.Hashtable<String, String>(); ht.put(javax.naming .Context
   * .INITIAL_CONTEXT_FACTORY, "jdbc/operators"); ht.put(javax.naming .Context
   * .PROVIDER_URL, lookupServer); InitialContext ctx = new
   * javax.naming.InitialContext(ht);
   * 
   * return ctx;
   * 
   * }
   */

  public void setDataSource(DataSource dataSource) {
    this.dataSource = dataSource;
  }

  private void initialize() {
    this.jndiName = ResourceBundleUtils.getApplicationProperty("db.conn.pool.jndi.name");
    LOG.debug("Initializing...  DBConnPool JNDIName:" + this.jndiName);
  }

}
