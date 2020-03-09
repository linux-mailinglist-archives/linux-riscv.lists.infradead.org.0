Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBA717E090
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 13:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zaxjBAuTx2YELL1LGQEhXTbhZfnooO5vHnkOStLbQ70=; b=fZG6Gct7zAP2XlsUtviaT/t0D
	Va2sLmVzBq/56HBj5qvjVTqGbh7vKxNDvyJJqHh0qh9cjeYs75O48h2AdvWS36CnyVOwDnTkhWkYs
	tWg8KmeOJNuZ3PEMxzggTVjS7bI1oolG6GtBIVPmcozQMxwKsMnLbklHV2LAbCCgecm7+jg++B+ni
	BFni6Tf8IlFrEaSFLNQaxDQV2FNf8pro91rOIrLjhV+cQfaeMwWbVirXcWXfV1ge5GsfcdnY6lgMB
	wSKFB+iwqCEz0w3YykEZ/KDRost5p6zUAhKvEoE/F833kEGJ8TvC56x8iiCSgNOVYqBuRkNvNvQWH
	1wYsS09gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHrh-0000Np-OY; Mon, 09 Mar 2020 12:50:37 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHrd-0000Ms-6K
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 12:50:35 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 05:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; 
 d="gz'50?scan'50,208,50";a="241960515"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Mar 2020 05:50:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jBHrY-000Hgs-L0; Mon, 09 Mar 2020 20:50:28 +0800
Date: Mon, 9 Mar 2020 20:50:19 +0800
From: kbuild test robot <lkp@intel.com>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v2 1/9] riscv: add ARCH_HAS_SET_MEMORY support
Message-ID: <202003092056.iAw8Vovm%lkp@intel.com>
References: <b050081f7d30130cad20216b1e65380851915b95.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
In-Reply-To: <b050081f7d30130cad20216b1e65380851915b95.1583741997.git.zong.li@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_055033_289521_81A89C48 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Zong,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on v5.6-rc5]
[also build test ERROR on next-20200306]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Zong-Li/Support-strict-kernel-memory-permissions-for-security/20200309-172554
base:    2c523b344dfa65a3738e7039832044aa133c75fb
config: riscv-nommu_virt_defconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/riscv/mm/pageattr.c: In function 'pageattr_pmd_entry':
>> arch/riscv/mm/pageattr.c:73:3: error: implicit declaration of function 'set_pmd'; did you mean 'set_pud'? [-Werror=implicit-function-declaration]
      set_pmd(pmd, val);
      ^~~~~~~
      set_pud
   arch/riscv/mm/pageattr.c: In function 'pageattr_pte_entry':
>> arch/riscv/mm/pageattr.c:85:2: error: implicit declaration of function 'set_pte'; did you mean 'set_pud'? [-Werror=implicit-function-declaration]
     set_pte(pte, val);
     ^~~~~~~
     set_pud
   cc1: some warnings being treated as errors

vim +73 arch/riscv/mm/pageattr.c

    65	
    66	static int pageattr_pmd_entry(pmd_t *pmd, unsigned long addr,
    67				      unsigned long next, struct mm_walk *walk)
    68	{
    69		pmd_t val = READ_ONCE(*pmd);
    70	
    71		if (pmd_leaf(val)) {
    72			val = __pmd(set_pageattr_masks(pmd_val(val), walk));
  > 73			set_pmd(pmd, val);
    74		}
    75	
    76		return 0;
    77	}
    78	
    79	static int pageattr_pte_entry(pte_t *pte, unsigned long addr,
    80				      unsigned long next, struct mm_walk *walk)
    81	{
    82		pte_t val = READ_ONCE(*pte);
    83	
    84		val = __pte(set_pageattr_masks(pte_val(val), walk));
  > 85		set_pte(pte, val);
    86	
    87		return 0;
    88	}
    89	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
j+1UuDg//QvAxf8ZHl8AAA==

--FCuugMFkClbJLl1L--

