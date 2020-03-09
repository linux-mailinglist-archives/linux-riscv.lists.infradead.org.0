Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07CF17E08F
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 13:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ahl0EJWmHoMRLY0eSXQXA7ej/NnhxNTEll1BqcWKc48=; b=FFXSA6REauXnBqfxuFtZ+hevT
	FNDZJ8I28EktxAWrfwRv7uSIn21zlmqwQo0u8KLnyPLGgLLX0Rah2J6Va5j9ak0Bk9aIXRCDHpmtq
	tMNqIUoYLYYcU9hcgrSi5ukgnl9vmmpSmadJMN/WrtR8GELokl51cAya4MmxUIVzHcUiO571hwC96
	Px68te6SWl/hJza+V9ZUnBpT2HbUQHNAQ4P7+jN/NjCUbLcEjfNA36ipruqvOUjZ68d0jRFuQbJIH
	NonLLG5NpNmtav6FgoQQbRMbiVD/o3NT702kRblDMWUqXKlJskEb5WsAzA3sRFIiUqCDKxmjHPEVx
	riZKcOD/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHrj-0000P8-1D; Mon, 09 Mar 2020 12:50:39 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHrd-0000Mt-H4
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 12:50:35 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 05:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; 
 d="gz'50?scan'50,208,50";a="353360605"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2020 05:50:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jBHrY-000Hhk-Rt; Mon, 09 Mar 2020 20:50:28 +0800
Date: Mon, 9 Mar 2020 20:49:40 +0800
From: kbuild test robot <lkp@intel.com>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v2 8/9] riscv: introduce interfaces to patch kernel code
Message-ID: <202003092006.4aw3aHrv%lkp@intel.com>
References: <e2a42afbce47b364bf790b4cf8edf76235e48d53.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
In-Reply-To: <e2a42afbce47b364bf790b4cf8edf76235e48d53.1583741997.git.zong.li@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_055033_636492_AEAE2B36 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Zong,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on v5.6-rc5]
[also build test WARNING on next-20200306]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Zong-Li/Support-strict-kernel-memory-permissions-for-security/20200309-172554
base:    2c523b344dfa65a3738e7039832044aa133c75fb
config: riscv-allnoconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/spinlock.h:318:0,
                    from arch/riscv/kernel/patch.c:6:
   arch/riscv/kernel/patch.c: In function 'riscv_insn_write':
   arch/riscv/kernel/patch.c:63:25: error: 'patch_lock' undeclared (first use in this function); did you mean 'patch_map'?
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock_api_up.h:28:32: note: in definition of macro '___LOCK'
      do { __acquire(lock); (void)(lock); } while (0)
                                   ^~~~
>> include/linux/spinlock_api_up.h:40:31: note: in expansion of macro '__LOCK'
      do { local_irq_save(flags); __LOCK(lock); } while (0)
                                  ^~~~~~
>> include/linux/spinlock_api_up.h:68:45: note: in expansion of macro '__LOCK_IRQSAVE'
    #define _raw_spin_lock_irqsave(lock, flags) __LOCK_IRQSAVE(lock, flags)
                                                ^~~~~~~~~~~~~~
>> include/linux/spinlock.h:272:3: note: in expansion of macro '_raw_spin_lock_irqsave'
      _raw_spin_lock_irqsave(lock, flags); \
      ^~~~~~~~~~~~~~~~~~~~~~
>> arch/riscv/kernel/patch.c:63:2: note: in expansion of macro 'raw_spin_lock_irqsave'
     raw_spin_lock_irqsave(&patch_lock, flags);
     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/patch.c:63:25: note: each undeclared identifier is reported only once for each function it appears in
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock_api_up.h:28:32: note: in definition of macro '___LOCK'
      do { __acquire(lock); (void)(lock); } while (0)
                                   ^~~~
>> include/linux/spinlock_api_up.h:40:31: note: in expansion of macro '__LOCK'
      do { local_irq_save(flags); __LOCK(lock); } while (0)
                                  ^~~~~~
>> include/linux/spinlock_api_up.h:68:45: note: in expansion of macro '__LOCK_IRQSAVE'
    #define _raw_spin_lock_irqsave(lock, flags) __LOCK_IRQSAVE(lock, flags)
                                                ^~~~~~~~~~~~~~
>> include/linux/spinlock.h:272:3: note: in expansion of macro '_raw_spin_lock_irqsave'
      _raw_spin_lock_irqsave(lock, flags); \
      ^~~~~~~~~~~~~~~~~~~~~~
>> arch/riscv/kernel/patch.c:63:2: note: in expansion of macro 'raw_spin_lock_irqsave'
     raw_spin_lock_irqsave(&patch_lock, flags);
     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/patch.c:66:25: error: 'FIX_TEXT_POKE1' undeclared (first use in this function)
      patch_map(addr + len, FIX_TEXT_POKE1);
                            ^~~~~~~~~~~~~~
   arch/riscv/kernel/patch.c:68:26: error: 'FIX_TEXT_POKE0' undeclared (first use in this function); did you mean 'FIX_TEXT_POKE1'?
     waddr = patch_map(addr, FIX_TEXT_POKE0);
                             ^~~~~~~~~~~~~~
                             FIX_TEXT_POKE1
--
   In file included from include/linux/spinlock.h:318:0,
                    from arch/riscv//kernel/patch.c:6:
   arch/riscv//kernel/patch.c: In function 'riscv_insn_write':
   arch/riscv//kernel/patch.c:63:25: error: 'patch_lock' undeclared (first use in this function); did you mean 'patch_map'?
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock_api_up.h:28:32: note: in definition of macro '___LOCK'
      do { __acquire(lock); (void)(lock); } while (0)
                                   ^~~~
>> include/linux/spinlock_api_up.h:40:31: note: in expansion of macro '__LOCK'
      do { local_irq_save(flags); __LOCK(lock); } while (0)
                                  ^~~~~~
>> include/linux/spinlock_api_up.h:68:45: note: in expansion of macro '__LOCK_IRQSAVE'
    #define _raw_spin_lock_irqsave(lock, flags) __LOCK_IRQSAVE(lock, flags)
                                                ^~~~~~~~~~~~~~
>> include/linux/spinlock.h:272:3: note: in expansion of macro '_raw_spin_lock_irqsave'
      _raw_spin_lock_irqsave(lock, flags); \
      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv//kernel/patch.c:63:2: note: in expansion of macro 'raw_spin_lock_irqsave'
     raw_spin_lock_irqsave(&patch_lock, flags);
     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv//kernel/patch.c:63:25: note: each undeclared identifier is reported only once for each function it appears in
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock_api_up.h:28:32: note: in definition of macro '___LOCK'
      do { __acquire(lock); (void)(lock); } while (0)
                                   ^~~~
>> include/linux/spinlock_api_up.h:40:31: note: in expansion of macro '__LOCK'
      do { local_irq_save(flags); __LOCK(lock); } while (0)
                                  ^~~~~~
>> include/linux/spinlock_api_up.h:68:45: note: in expansion of macro '__LOCK_IRQSAVE'
    #define _raw_spin_lock_irqsave(lock, flags) __LOCK_IRQSAVE(lock, flags)
                                                ^~~~~~~~~~~~~~
>> include/linux/spinlock.h:272:3: note: in expansion of macro '_raw_spin_lock_irqsave'
      _raw_spin_lock_irqsave(lock, flags); \
      ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv//kernel/patch.c:63:2: note: in expansion of macro 'raw_spin_lock_irqsave'
     raw_spin_lock_irqsave(&patch_lock, flags);
     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv//kernel/patch.c:66:25: error: 'FIX_TEXT_POKE1' undeclared (first use in this function)
      patch_map(addr + len, FIX_TEXT_POKE1);
                            ^~~~~~~~~~~~~~
   arch/riscv//kernel/patch.c:68:26: error: 'FIX_TEXT_POKE0' undeclared (first use in this function); did you mean 'FIX_TEXT_POKE1'?
     waddr = patch_map(addr, FIX_TEXT_POKE0);
                             ^~~~~~~~~~~~~~
                             FIX_TEXT_POKE1

vim +/_raw_spin_lock_irqsave +272 include/linux/spinlock.h

b8e6ec865fd1d8 Linus Torvalds  2006-11-26  268  
c2f21ce2e31286 Thomas Gleixner 2009-12-02  269  #define raw_spin_lock_irqsave(lock, flags)		\
3f307891ce0e7b Steven Rostedt  2008-07-25  270  	do {						\
3f307891ce0e7b Steven Rostedt  2008-07-25  271  		typecheck(unsigned long, flags);	\
9c1721aa4994f6 Thomas Gleixner 2009-12-03 @272  		_raw_spin_lock_irqsave(lock, flags);	\
3f307891ce0e7b Steven Rostedt  2008-07-25  273  	} while (0)
ef12f10994281e Thomas Gleixner 2009-11-07  274  

:::::: The code at line 272 was first introduced by commit
:::::: 9c1721aa4994f6625decbd915241f3a94ee2fe67 locking: Cleanup the name space completely

:::::: TO: Thomas Gleixner <tglx@linutronix.de>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
TvNzdtmDpIwJyf4XIjd2QhJKAAA=

--BOKacYhQ+x31HxR3--

