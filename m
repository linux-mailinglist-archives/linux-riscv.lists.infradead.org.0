Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761E2130800
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Jan 2020 13:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E6cxakPJeyjAcWF+PTS3Crg0TgpYqWbICzRWj8M2HJs=; b=sC/H8d2I8w8aiHDaW5YLQ8nMb
	MsKQT88r90sPrNo9btK4qD+ThFy793IHw7x8IselkbJVBRgjT6qIhCbzfR0KtzN//qql7ck6Tr2rT
	NmeDMN9hV+dCv69X8zkRRAO0OhRzwzUzIF6sOuoNZGm1yl8hoFevwMshJnLtyBMZtOTb9x1S/RN42
	QVTBq0fpIhEL1a0GkDTqLajZg6Ix+oqnWRwQN5sutN5c7KCH9cD2AiI6Vlt+jo8kb0PjYsiFEK6Dp
	OE7foFekvtXYbdKYDwSAuS30+mFTBr8Zdy6MMES2UsC73Sho3s33hv3umItQ6kHjMFKqfc78bBMq7
	Q9yzvtHCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io55t-0004he-C5; Sun, 05 Jan 2020 12:33:21 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io55q-0004ge-0J
 for linux-riscv@lists.infradead.org; Sun, 05 Jan 2020 12:33:19 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jan 2020 04:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,398,1571727600"; 
 d="gz'50?scan'50,208,50";a="222030912"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 05 Jan 2020 04:33:10 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1io55h-0001GH-NR; Sun, 05 Jan 2020 20:33:09 +0800
Date: Sun, 5 Jan 2020 20:32:10 +0800
From: kbuild test robot <lkp@intel.com>
To: guoren@kernel.org
Subject: Re: [PATCH 2/2] riscv: Add vector ISA support
Message-ID: <202001052007.tXdAjjwN%lkp@intel.com>
References: <20200105025215.2522-2-guoren@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5yvhz5ykjiavufu2"
Content-Disposition: inline
In-Reply-To: <20200105025215.2522-2-guoren@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_043318_076164_011A5356 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, aou@eecs.berkeley.edu, kbuild-all@lists.01.org,
 Guo Ren <ren_guo@c-sky.com>, arnd@arndb.de, atish.patra@wdc.com,
 Anup.Patel@wdc.com, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 vincent.chen@sifive.com, palmer@dabbelt.com, zong.li@sifive.com,
 paul.walmsley@sifive.com, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, bmeng.cn@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--5yvhz5ykjiavufu2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.5-rc4 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/guoren-kernel-org/riscv-Fixup-obvious-bug-for-fp-regs-reset/20200105-105609
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git c420ddda506b80ec2686e405698d37fafeea3b7a
config: riscv-rv32_defconfig (attached as .config)
compiler: riscv32-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv/include/asm/ptrace.h:9:0,
                    from arch/riscv/include/asm/processor.h:11,
                    from arch/riscv/include/asm/irqflags.h:10,
                    from include/linux/irqflags.h:16,
                    from arch/riscv/include/asm/bitops.h:14,
                    from include/linux/bitops.h:26,
                    from include/linux/kernel.h:12,
                    from include/asm-generic/bug.h:19,
                    from arch/riscv/include/asm/bug.h:75,
                    from include/linux/bug.h:5,
                    from include/linux/page-flags.h:10,
                    from kernel/bounds.c:10:
>> arch/riscv/include/uapi/asm/ptrace.h:75:2: error: unknown type name '__uint128_t'
     __uint128_t v[32];
     ^~~~~~~~~~~
   make[2]: *** [kernel/bounds.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   507 real  2 user  5 sys  1.58% cpu 	make prepare

vim +/__uint128_t +75 arch/riscv/include/uapi/asm/ptrace.h

    73	
    74	struct __riscv_v_state {
  > 75		__uint128_t v[32];
    76		unsigned long vstart;
    77		unsigned long vxsat;
    78		unsigned long vxrm;
    79		unsigned long vl;
    80		unsigned long vtype;
    81	};
    82	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--5yvhz5ykjiavufu2
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HPp4D7a1512mNqT/B9dTuY3JJAEA

--5yvhz5ykjiavufu2--

