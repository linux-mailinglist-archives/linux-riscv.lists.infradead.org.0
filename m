Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 252B0109960
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 07:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gRIH7qgYqZEkcQTl5r4YTvVMe3Dg9PFQIuttPubJ7+8=; b=irhxYhl+OXcKqTm1Poh/oUjeH
	4qXbPrvhOststQTWt1qeoS9De+/94kxk7IjJ7ZNhqvEg5g4jC0StTifteC2QjyIpiMSMHNR6HAmoi
	BOgTRd1bPBNJKjuIBgsloQxllosiii+v/CC6UsSkptr/8GTUhACSmOY7CsMjzdR2xRs/CLN7Wrc0F
	eDXvkIn+/D4ZX+BEgWi0Wga+WP+sEdh7XexghKaIWSUdKlHj+SeOLJxtd+AiX731uALLrowjHjjWh
	wv5zHsR6uty3kgzY+krXppFdFoYojhGMluovlGl2h3mCHk3Gmn47pfqQz5s8NFaakCgHGA0dxBh3E
	iezv2o4Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZUih-0007qc-Vw; Tue, 26 Nov 2019 06:53:07 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUid-0007q3-O2
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 06:53:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 22:53:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; 
 d="gz'50?scan'50,208,50";a="239819555"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2019 22:53:00 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iZUiZ-000AIW-EA; Tue, 26 Nov 2019 14:52:59 +0800
Date: Tue, 26 Nov 2019 14:52:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v4 4/4] RISC-V: Implement new SBI v0.2 extensions
Message-ID: <201911261435.WbPxe8Dn%lkp@intel.com>
References: <20191126032033.14825-5-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jssjhuawk3q2yyk2"
Content-Disposition: inline
In-Reply-To: <20191126032033.14825-5-atish.patra@wdc.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_225303_807860_62F4E5A9 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, kbuild-all@lists.01.org,
 Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--jssjhuawk3q2yyk2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Atish,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on next-20191125]
[cannot apply to linus/master v5.4 v5.4-rc8 v5.4-rc7 v5.4]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Atish-Patra/Add-support-for-SBI-v0-2/20191126-122142
base:    c165016bac2719e05794c216f9b6da730d68d1e3
config: riscv-allnoconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/riscv/kernel/sbi.c:71:52: note: format string is defined here
     pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
                                                     ~~^
                                                     %u
   In file included from include/linux/printk.h:7:0,
                    from include/linux/kernel.h:15,
                    from include/linux/list.h:9,
                    from include/linux/pm.h:11,
                    from arch/riscv/kernel/sbi.c:4:
   include/linux/kern_levels.h:5:18: warning: format '%lu' expects argument of type 'long unsigned int', but argument 3 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/kern_levels.h:12:22: note: in expansion of macro 'KERN_SOH'
    #define KERN_WARNING KERN_SOH "4" /* warning conditions */
                         ^~~~~~~~
   include/linux/printk.h:306:9: note: in expansion of macro 'KERN_WARNING'
     printk(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
            ^~~~~~~~~~~~
   include/linux/printk.h:307:17: note: in expansion of macro 'pr_warning'
    #define pr_warn pr_warning
                    ^~~~~~~~~~
   arch/riscv/kernel/sbi.c:71:2: note: in expansion of macro 'pr_warn'
     pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
     ^~~~~~~
   arch/riscv/kernel/sbi.c:71:56: note: format string is defined here
     pr_warn("IPI extension is not available in SBI v%lu.%lu\n",
                                                         ~~^
                                                         %u
   In file included from include/linux/printk.h:7:0,
                    from include/linux/kernel.h:15,
                    from include/linux/list.h:9,
                    from include/linux/pm.h:11,
                    from arch/riscv/kernel/sbi.c:4:
   arch/riscv/kernel/sbi.c: In function '__sbi_rfence_dummy_warn':
   include/linux/kern_levels.h:5:18: warning: format '%lu' expects argument of type 'long unsigned int', but argument 2 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/kern_levels.h:12:22: note: in expansion of macro 'KERN_SOH'
    #define KERN_WARNING KERN_SOH "4" /* warning conditions */
                         ^~~~~~~~
   include/linux/printk.h:306:9: note: in expansion of macro 'KERN_WARNING'
     printk(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
            ^~~~~~~~~~~~
   include/linux/printk.h:307:17: note: in expansion of macro 'pr_warning'
    #define pr_warn pr_warning
                    ^~~~~~~~~~
   arch/riscv/kernel/sbi.c:83:2: note: in expansion of macro 'pr_warn'
     pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
     ^~~~~~~
   arch/riscv/kernel/sbi.c:83:61: note: format string is defined here
     pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
                                                              ~~^
                                                              %u
   In file included from include/linux/printk.h:7:0,
                    from include/linux/kernel.h:15,
                    from include/linux/list.h:9,
                    from include/linux/pm.h:11,
                    from arch/riscv/kernel/sbi.c:4:
   include/linux/kern_levels.h:5:18: warning: format '%lu' expects argument of type 'long unsigned int', but argument 3 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/kern_levels.h:12:22: note: in expansion of macro 'KERN_SOH'
    #define KERN_WARNING KERN_SOH "4" /* warning conditions */
                         ^~~~~~~~
   include/linux/printk.h:306:9: note: in expansion of macro 'KERN_WARNING'
     printk(KERN_WARNING pr_fmt(fmt), ##__VA_ARGS__)
            ^~~~~~~~~~~~
   include/linux/printk.h:307:17: note: in expansion of macro 'pr_warning'
    #define pr_warn pr_warning
                    ^~~~~~~~~~
   arch/riscv/kernel/sbi.c:83:2: note: in expansion of macro 'pr_warn'
     pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
     ^~~~~~~
   arch/riscv/kernel/sbi.c:83:65: note: format string is defined here
     pr_warn("remote fence extension is not available in SBI v%lu.%lu\n",
                                                                  ~~^
                                                                  %u
   arch/riscv/kernel/sbi.c: In function '__sbi_set_timer_v02':
   arch/riscv/kernel/sbi.c:214:12: error: 'SBI_EXT_TIME' undeclared (first use in this function); did you mean 'STA_PPSTIME'?
     sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
               ^~~~~~~~~~~~
               STA_PPSTIME
   arch/riscv/kernel/sbi.c:214:26: error: 'SBI_EXT_TIME_SET_TIMER' undeclared (first use in this function); did you mean 'SBI_EXT_TIME'?
     sbi_ecall(SBI_EXT_TIME, SBI_EXT_TIME_SET_TIMER, stime_value, 0,
                             ^~~~~~~~~~~~~~~~~~~~~~
                             SBI_EXT_TIME
   arch/riscv/kernel/sbi.c: In function '__sbi_send_ipi_v02':
   arch/riscv/kernel/sbi.c:222:9: error: variable 'ret' has initializer but incomplete type
     struct sbiret ret = {0};
            ^~~~~~
   arch/riscv/kernel/sbi.c:222:23: warning: excess elements in struct initializer
     struct sbiret ret = {0};
                          ^
   arch/riscv/kernel/sbi.c:222:23: note: (near initialization for 'ret')
   arch/riscv/kernel/sbi.c:222:16: error: storage size of 'ret' isn't known
     struct sbiret ret = {0};
                   ^~~
   arch/riscv/kernel/sbi.c:230:18: error: 'SBI_EXT_IPI' undeclared (first use in this function)
     ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
                     ^~~~~~~~~~~
>> arch/riscv/kernel/sbi.c:230:31: error: 'SBI_EXT_IPI_SEND_IPI' undeclared (first use in this function); did you mean 'SBI_EXT_IPI'?
     ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
                                  ^~~~~~~~~~~~~~~~~~~~
                                  SBI_EXT_IPI
   arch/riscv/kernel/sbi.c:222:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret = {0};
                   ^~~
   arch/riscv/kernel/sbi.c: In function '__sbi_rfence_v02':
   arch/riscv/kernel/sbi.c:249:9: error: variable 'ret' has initializer but incomplete type
     struct sbiret ret = {0};
            ^~~~~~
   arch/riscv/kernel/sbi.c:249:23: warning: excess elements in struct initializer
     struct sbiret ret = {0};
                          ^
   arch/riscv/kernel/sbi.c:249:23: note: (near initialization for 'ret')
   arch/riscv/kernel/sbi.c:249:16: error: storage size of 'ret' isn't known
     struct sbiret ret = {0};
                   ^~~
   arch/riscv/kernel/sbi.c:251:22: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'RISCV_FENCE'?
     unsigned long ext = SBI_EXT_RFENCE;
                         ^~~~~~~~~~~~~~
                         RISCV_FENCE
   arch/riscv/kernel/sbi.c:259:7: error: 'SBI_EXT_RFENCE_REMOTE_FENCE_I' undeclared (first use in this function)
     case SBI_EXT_RFENCE_REMOTE_FENCE_I:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:262:7: error: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_FENCE_I'?
     case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_FENCE_I
   arch/riscv/kernel/sbi.c:266:7: error: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA'?
     case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_SFENCE_VMA
>> arch/riscv/kernel/sbi.c:271:7: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA'?
     case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_SFENCE_VMA
>> arch/riscv/kernel/sbi.c:275:7: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID'?
     case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID
>> arch/riscv/kernel/sbi.c:279:7: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA'?
     case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA
>> arch/riscv/kernel/sbi.c:283:7: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID' undeclared (first use in this function); did you mean 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID'?
     case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID
   arch/riscv/kernel/sbi.c:249:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret = {0};
                   ^~~
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_fence_i':
   arch/riscv/kernel/sbi.c:335:15: error: 'SBI_EXT_0_1_REMOTE_FENCE_I' undeclared (first use in this function)
     __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:335:43: error: 'SBI_EXT_RFENCE_REMOTE_FENCE_I' undeclared (first use in this function); did you mean 'SBI_EXT_0_1_REMOTE_FENCE_I'?
     __sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
                                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              SBI_EXT_0_1_REMOTE_FENCE_I
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_sfence_vma':
   arch/riscv/kernel/sbi.c:353:15: error: 'SBI_EXT_0_1_REMOTE_SFENCE_VMA' undeclared (first use in this function)
     __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> arch/riscv/kernel/sbi.c:354:8: error: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA' undeclared (first use in this function); did you mean 'SBI_EXT_0_1_REMOTE_SFENCE_VMA'?
           SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           SBI_EXT_0_1_REMOTE_SFENCE_VMA
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_sfence_vma_asid':
   arch/riscv/kernel/sbi.c:375:15: error: 'SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID' undeclared (first use in this function)
     __sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> arch/riscv/kernel/sbi.c:376:8: error: 'SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID' undeclared (first use in this function); did you mean 'SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID'?
           SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
           SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_gvma':
   arch/riscv/kernel/sbi.c:394:22: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'RISCV_FENCE'?
     return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
                         ^~~~~~~~~~~~~~
                         RISCV_FENCE
   arch/riscv/kernel/sbi.c:394:38: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA' undeclared (first use in this function)
     return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA,
                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_gvma_vmid':
   arch/riscv/kernel/sbi.c:415:22: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'RISCV_FENCE'?
     return __sbi_rfence(SBI_EXT_RFENCE,
                         ^~~~~~~~~~~~~~
                         RISCV_FENCE
   arch/riscv/kernel/sbi.c:416:8: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID' undeclared (first use in this function)
           SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_vvma':
   arch/riscv/kernel/sbi.c:434:22: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'RISCV_FENCE'?
     return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
                         ^~~~~~~~~~~~~~
                         RISCV_FENCE
   arch/riscv/kernel/sbi.c:434:38: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA' undeclared (first use in this function)
     return __sbi_rfence(SBI_EXT_RFENCE, SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA,
                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_vvma_asid':
   arch/riscv/kernel/sbi.c:456:22: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'RISCV_FENCE'?
     return __sbi_rfence(SBI_EXT_RFENCE,
                         ^~~~~~~~~~~~~~
                         RISCV_FENCE
   arch/riscv/kernel/sbi.c:457:8: error: 'SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID' undeclared (first use in this function)
           SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c: In function 'sbi_probe_extension':
   arch/riscv/kernel/sbi.c:470:16: error: storage size of 'ret' isn't known
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c:472:18: error: 'SBI_EXT_BASE' undeclared (first use in this function); did you mean 'BIT_MASK'?
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_PROBE_EXT, extid, 0, 0, 0, 0, 0);
                     ^~~~~~~~~~~~
                     BIT_MASK
   arch/riscv/kernel/sbi.c:472:32: error: 'SBI_BASE_PROBE_EXT' undeclared (first use in this function)
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_PROBE_EXT, extid, 0, 0, 0, 0, 0);
                                   ^~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:470:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c: In function 'sbi_get_spec_version':
   arch/riscv/kernel/sbi.c:484:16: error: storage size of 'ret' isn't known
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c:486:18: error: 'SBI_EXT_BASE' undeclared (first use in this function); did you mean 'BIT_MASK'?
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_SPEC_VERSION,
                     ^~~~~~~~~~~~
                     BIT_MASK
   arch/riscv/kernel/sbi.c:486:32: error: 'SBI_BASE_GET_SPEC_VERSION' undeclared (first use in this function)
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_SPEC_VERSION,
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:484:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c: In function 'sbi_get_firmware_id':
   arch/riscv/kernel/sbi.c:496:16: error: storage size of 'ret' isn't known
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c:498:18: error: 'SBI_EXT_BASE' undeclared (first use in this function); did you mean 'BIT_MASK'?
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_ID,
                     ^~~~~~~~~~~~
                     BIT_MASK
   arch/riscv/kernel/sbi.c:498:32: error: 'SBI_BASE_GET_IMP_ID' undeclared (first use in this function)
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_ID,
                                   ^~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:496:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c: In function 'sbi_get_firmware_version':
   arch/riscv/kernel/sbi.c:508:16: error: storage size of 'ret' isn't known
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c:510:18: error: 'SBI_EXT_BASE' undeclared (first use in this function); did you mean 'BIT_MASK'?
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_VERSION,
                     ^~~~~~~~~~~~
                     BIT_MASK
   arch/riscv/kernel/sbi.c:510:32: error: 'SBI_BASE_GET_IMP_VERSION' undeclared (first use in this function); did you mean '__GXX_ABI_VERSION'?
     ret = sbi_ecall(SBI_EXT_BASE, SBI_BASE_GET_IMP_VERSION,
                                   ^~~~~~~~~~~~~~~~~~~~~~~~
                                   __GXX_ABI_VERSION
   arch/riscv/kernel/sbi.c:508:16: warning: unused variable 'ret' [-Wunused-variable]
     struct sbiret ret;
                   ^~~
   arch/riscv/kernel/sbi.c: In function 'sbi_power_off':
   arch/riscv/kernel/sbi.c:520:2: error: implicit declaration of function 'sbi_shutdown' [-Werror=implicit-function-declaration]
     sbi_shutdown();
     ^~~~~~~~~~~~
   In file included from include/linux/printk.h:7:0,
                    from include/linux/kernel.h:15,
                    from include/linux/list.h:9,
                    from include/linux/pm.h:11,
                    from arch/riscv/kernel/sbi.c:4:
   arch/riscv/kernel/sbi.c: In function 'sbi_init':
   include/linux/kern_levels.h:5:18: warning: format '%lu' expects argument of type 'long unsigned int', but argument 2 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/kern_levels.h:14:19: note: in expansion of macro 'KERN_SOH'
    #define KERN_INFO KERN_SOH "6" /* informational */
                      ^~~~~~~~
   include/linux/printk.h:311:9: note: in expansion of macro 'KERN_INFO'
     printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
            ^~~~~~~~~
   arch/riscv/kernel/sbi.c:532:2: note: in expansion of macro 'pr_info'
     pr_info("SBI specification v%lu.%lu detected\n",
     ^~~~~~~
   arch/riscv/kernel/sbi.c:532:32: note: format string is defined here
     pr_info("SBI specification v%lu.%lu detected\n",
                                 ~~^
                                 %u
   In file included from include/linux/printk.h:7:0,
                    from include/linux/kernel.h:15,
                    from include/linux/list.h:9,
                    from include/linux/pm.h:11,
                    from arch/riscv/kernel/sbi.c:4:
   include/linux/kern_levels.h:5:18: warning: format '%lu' expects argument of type 'long unsigned int', but argument 3 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/kern_levels.h:14:19: note: in expansion of macro 'KERN_SOH'
    #define KERN_INFO KERN_SOH "6" /* informational */
                      ^~~~~~~~
   include/linux/printk.h:311:9: note: in expansion of macro 'KERN_INFO'
     printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
            ^~~~~~~~~
   arch/riscv/kernel/sbi.c:532:2: note: in expansion of macro 'pr_info'
     pr_info("SBI specification v%lu.%lu detected\n",
     ^~~~~~~
   arch/riscv/kernel/sbi.c:532:36: note: format string is defined here
     pr_info("SBI specification v%lu.%lu detected\n",
                                     ~~^
                                     %u
   arch/riscv/kernel/sbi.c:535:6: error: implicit declaration of function 'sbi_spec_is_0_1' [-Werror=implicit-function-declaration]
     if (sbi_spec_is_0_1()) {
         ^~~~~~~~~~~~~~~
   arch/riscv/kernel/sbi.c:542:27: error: 'SBI_EXT_TIME' undeclared (first use in this function); did you mean 'STA_PPSTIME'?
      if (sbi_probe_extension(SBI_EXT_TIME) > 0)
                              ^~~~~~~~~~~~
                              STA_PPSTIME
>> arch/riscv/kernel/sbi.c:546:27: error: 'SBI_EXT_IPI' undeclared (first use in this function); did you mean 'SBI_EXT_TIME'?
      if (sbi_probe_extension(SBI_EXT_IPI) > 0)
                              ^~~~~~~~~~~
                              SBI_EXT_TIME
>> arch/riscv/kernel/sbi.c:550:27: error: 'SBI_EXT_RFENCE' undeclared (first use in this function); did you mean 'SBI_EXT_TIME'?
      if (sbi_probe_extension(SBI_EXT_RFENCE) > 0)
                              ^~~~~~~~~~~~~~
                              SBI_EXT_TIME
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_gvma':
   arch/riscv/kernel/sbi.c:396:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_gvma_vmid':
   arch/riscv/kernel/sbi.c:418:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_vvma':
   arch/riscv/kernel/sbi.c:436:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_remote_hfence_vvma_asid':
   arch/riscv/kernel/sbi.c:459:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_get_spec_version':
   arch/riscv/kernel/sbi.c:492:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_get_firmware_id':
   arch/riscv/kernel/sbi.c:504:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   arch/riscv/kernel/sbi.c: In function 'sbi_get_firmware_version':
   arch/riscv/kernel/sbi.c:516:1: warning: control reaches end of non-void function [-Wreturn-type]
    }
    ^
   cc1: some warnings being treated as errors

vim +230 arch/riscv/kernel/sbi.c

   218	
   219	static int __sbi_send_ipi_v02(const unsigned long *hart_mask)
   220	{
   221		unsigned long hmask_val;
 > 222		struct sbiret ret = {0};
   223		int result;
   224	
   225		if (!hart_mask)
   226			hmask_val = *(cpumask_bits(cpu_online_mask));
   227		else
   228			hmask_val = *hart_mask;
   229	
 > 230		ret = sbi_ecall(SBI_EXT_IPI, SBI_EXT_IPI_SEND_IPI, hmask_val,
   231				0, 0, 0, 0, 0);
   232		if (ret.error) {
   233			pr_err("%s: failed with error [%d]\n", __func__,
   234				sbi_err_map_linux_errno(ret.error));
   235			result = ret.error;
   236		} else
   237			result = ret.value;
   238	
   239		return result;
   240	}
   241	
   242	static int __sbi_rfence_v02(unsigned long extid, unsigned long fid,
   243				     const unsigned long *hart_mask,
   244				     unsigned long hbase, unsigned long start,
   245				     unsigned long size, unsigned long arg4,
   246				     unsigned long arg5)
   247	{
   248		unsigned long hmask_val;
   249		struct sbiret ret = {0};
   250		int result;
   251		unsigned long ext = SBI_EXT_RFENCE;
   252	
   253		if (!hart_mask)
   254			hmask_val = *(cpumask_bits(cpu_online_mask));
   255		else
   256			hmask_val = *hart_mask;
   257	
   258		switch (fid) {
   259		case SBI_EXT_RFENCE_REMOTE_FENCE_I:
   260			ret = sbi_ecall(ext, fid, hmask_val, 0, 0, 0, 0, 0);
   261			break;
 > 262		case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA:
   263			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   264					size, 0, 0);
   265			break;
 > 266		case SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID:
   267			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   268					size, arg4, 0);
   269			break;
   270		/*TODO: Handle non zero hbase cases */
 > 271		case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA:
   272			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   273					size, 0, 0);
   274			break;
 > 275		case SBI_EXT_RFENCE_REMOTE_HFENCE_GVMA_VMID:
   276			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   277					size, arg4, 0);
   278			break;
 > 279		case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA:
   280			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   281					size, 0, 0);
   282			break;
 > 283		case SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID:
   284			ret = sbi_ecall(ext, fid, hmask_val, 0, start,
   285					size, arg4, 0);
   286			break;
   287		default:
   288			pr_err("unknown function ID [%lu] for SBI extension [%lu]\n",
   289				fid, ext);
   290			result = -EINVAL;
   291		}
   292	
   293		if (ret.error) {
   294			pr_err("%s: failed with error [%d]\n", __func__,
   295				sbi_err_map_linux_errno(ret.error));
   296			result = ret.error;
   297		} else
   298			result = ret.value;
   299	
   300		return result;
   301	}
   302	
   303	/**
   304	 * sbi_set_timer() - Program the timer for next timer event.
   305	 * @stime_value: The value after which next timer event should fire.
   306	 *
   307	 * Return: None
   308	 */
   309	void sbi_set_timer(uint64_t stime_value)
   310	{
   311		__sbi_set_timer(stime_value);
   312	}
   313	
   314	/**
   315	 * sbi_send_ipi() - Send an IPI to any hart.
   316	 * @hart_mask: A cpu mask containing all the target harts.
   317	 *
   318	 * Return: None
   319	 */
   320	void sbi_send_ipi(const unsigned long *hart_mask)
   321	{
   322		__sbi_send_ipi(hart_mask);
   323	}
   324	EXPORT_SYMBOL(sbi_send_ipi);
   325	
   326	
   327	/**
   328	 * sbi_remote_fence_i() - Execute FENCE.I instruction on given remote harts.
   329	 * @hart_mask: A cpu mask containing all the target harts.
   330	 *
   331	 * Return: None
   332	 */
   333	void sbi_remote_fence_i(const unsigned long *hart_mask)
   334	{
 > 335		__sbi_rfence(SBI_EXT_0_1_REMOTE_FENCE_I, SBI_EXT_RFENCE_REMOTE_FENCE_I,
   336			     hart_mask, 0, 0, 0, 0, 0);
   337	}
   338	EXPORT_SYMBOL(sbi_remote_fence_i);
   339	
   340	/**
   341	 * sbi_remote_sfence_vma() - Execute SFENCE.VMA instructions on given remote
   342	 *			     harts for the specified virtual address range.
   343	 * @hart_mask: A cpu mask containing all the target harts.
   344	 * @start: Start of the virtual address
   345	 * @size: Total size of the virtual address range.
   346	 *
   347	 * Return: None
   348	 */
   349	void sbi_remote_sfence_vma(const unsigned long *hart_mask,
   350						 unsigned long start,
   351						 unsigned long size)
   352	{
   353		__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA,
 > 354			     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA,
   355			     hart_mask, 0, start, size, 0, 0);
   356	}
   357	EXPORT_SYMBOL(sbi_remote_sfence_vma);
   358	
   359	/**
   360	 * sbi_remote_sfence_vma_asid() - Execute SFENCE.VMA instructions on given
   361	 * remote harts for a virtual address range belonging to a specific ASID.
   362	 *
   363	 * @hart_mask: A cpu mask containing all the target harts.
   364	 * @start: Start of the virtual address
   365	 * @size: Total size of the virtual address range.
   366	 * @asid: The value of address space identifier (ASID).
   367	 *
   368	 * Return: None
   369	 */
   370	void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
   371						      unsigned long start,
   372						      unsigned long size,
   373						      unsigned long asid)
   374	{
   375		__sbi_rfence(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID,
 > 376			     SBI_EXT_RFENCE_REMOTE_SFENCE_VMA_ASID,
   377			     hart_mask, 0, start, size, asid, 0);
   378	}
   379	EXPORT_SYMBOL(sbi_remote_sfence_vma_asid);
   380	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--jssjhuawk3q2yyk2
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--jssjhuawk3q2yyk2
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--jssjhuawk3q2yyk2--

