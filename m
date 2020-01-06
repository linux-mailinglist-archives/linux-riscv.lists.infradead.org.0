Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80015130C8B
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Jan 2020 04:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RKFJJPiOYXP0DtOqEsY/XlMXcY2EZhFsYxzktJ9oz7E=; b=nUaN9dTEKh4x7oC27wYLBnV8j
	thV5CdNn746bpzjWmS94edUUrJVA++8LKKY2r9lOOFOBTuNR8/m+wE1p97GGmBwKKVTV3xc9CKB3B
	+pSBCJqJwh/FuIEyBxfJZIW2vsYSnokSo/sRtp2vuxuVT8tmtFwpcGGp5o95q1TVeCqEsTpv1uxUI
	eNs64Nb45pADIknaamLo1KmcHDhmBrku0dUFu3pssV18X0TGiMgyC2y5fRcDG5yLl6ueaSraP7HLw
	N6c/WuJONV2NZ/eBU8a9ubAcXOAFj+ZBizylBWwRsUV+1nb+qnA4xt0zzU/nuhHpnqVgwd4JNmCLN
	JpAvF8yrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioJ31-0007Fq-74; Mon, 06 Jan 2020 03:27:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioJ2x-0007FL-2b
 for linux-riscv@lists.infradead.org; Mon, 06 Jan 2020 03:27:16 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1DE624650
 for <linux-riscv@lists.infradead.org>; Mon,  6 Jan 2020 03:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578281234;
 bh=Zo+Fm8zO3lwsW6sZymHRh/4KsQXc6l1b/Ks9odphPR0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Z0UwdeIDHhcH0bW8cMbIjnpqCStxe5BOfqJVW76lGxrpfgsRH/Q5lih0aZlEABzDm
 HWQaCImcVIi5OjEYe6PikuM8t2KLZVnbSDxhAcN/gg4q9UCZsitaCmAs7YI07pswKo
 teIg6PGUXySLYj4xI8Wf6fm+vkRcDmm/pqwRE70M=
Received: by mail-lf1-f52.google.com with SMTP id i23so35462907lfo.7
 for <linux-riscv@lists.infradead.org>; Sun, 05 Jan 2020 19:27:13 -0800 (PST)
X-Gm-Message-State: APjAAAU4l6LqFkNXKDpP3HIhdURf4Bv3u13peK2Lhe5T/Jg0CNJqcPOn
 PoQCgmT/Ae7BqlN5+FuNYaMK3MAhBt2jDtHHuGM=
X-Google-Smtp-Source: APXvYqygCSR6wPl5Ag17BA0i6KBc166EX6D0V4oaPVYvRn207pSfZ3zxEP1EqHI7xIYOgn2TOflxuC6xqb3hUkXGgbA=
X-Received: by 2002:ac2:4476:: with SMTP id y22mr55916850lfl.169.1578281232059; 
 Sun, 05 Jan 2020 19:27:12 -0800 (PST)
MIME-Version: 1.0
References: <20200105025215.2522-2-guoren@kernel.org>
 <202001052007.tXdAjjwN%lkp@intel.com>
In-Reply-To: <202001052007.tXdAjjwN%lkp@intel.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 6 Jan 2020 11:27:00 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTxu+rWAB2nZqQ8P-Z6xoFDi82ZSjHjjG-Ub99mU9yA-A@mail.gmail.com>
Message-ID: <CAJF2gTTxu+rWAB2nZqQ8P-Z6xoFDi82ZSjHjjG-Ub99mU9yA-A@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Add vector ISA support
To: kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_192715_163906_555755BD 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, aou@eecs.berkeley.edu,
 kbuild-all@lists.01.org, Guo Ren <ren_guo@c-sky.com>,
 Arnd Bergmann <arnd@arndb.de>, Atish Patra <atish.patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, vincent.chen@sifive.com,
 Palmer Dabbelt <palmer@dabbelt.com>, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

__uint128_t could work with gcc 8.1.

If compile the patch we need some small patch for binutils to support
several vector instructions, 0-day gcc need be updated in future.


On Sun, Jan 5, 2020 at 8:33 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on linus/master]
> [also build test ERROR on v5.5-rc4 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/guoren-kernel-org/riscv-Fixup-obvious-bug-for-fp-regs-reset/20200105-105609
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git c420ddda506b80ec2686e405698d37fafeea3b7a
> config: riscv-rv32_defconfig (attached as .config)
> compiler: riscv32-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=riscv
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from arch/riscv/include/asm/ptrace.h:9:0,
>                     from arch/riscv/include/asm/processor.h:11,
>                     from arch/riscv/include/asm/irqflags.h:10,
>                     from include/linux/irqflags.h:16,
>                     from arch/riscv/include/asm/bitops.h:14,
>                     from include/linux/bitops.h:26,
>                     from include/linux/kernel.h:12,
>                     from include/asm-generic/bug.h:19,
>                     from arch/riscv/include/asm/bug.h:75,
>                     from include/linux/bug.h:5,
>                     from include/linux/page-flags.h:10,
>                     from kernel/bounds.c:10:
> >> arch/riscv/include/uapi/asm/ptrace.h:75:2: error: unknown type name '__uint128_t'
>      __uint128_t v[32];
>      ^~~~~~~~~~~
>    make[2]: *** [kernel/bounds.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [sub-make] Error 2
>    507 real  2 user  5 sys  1.58% cpu   make prepare
>
> vim +/__uint128_t +75 arch/riscv/include/uapi/asm/ptrace.h
>
>     73
>     74  struct __riscv_v_state {
>   > 75          __uint128_t v[32];
>     76          unsigned long vstart;
>     77          unsigned long vxsat;
>     78          unsigned long vxrm;
>     79          unsigned long vl;
>     80          unsigned long vtype;
>     81  };
>     82
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

