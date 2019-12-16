Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E6F11FDAD
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 05:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5/7EtpYysHXSpkosM3HRCkSpxTMVEjj1QJPpob2x148=; b=X5dJGiSsd8gBWzyBNNdyh8s/D
	ymNYv65YVev6xpCH624Om/mB9FtOzXz79I36EEsNU8x4F2pcyA95SoXMkNWnLaQEp7y9eajdFwfLp
	KMNYym7ER3nCS9/mJrGMlTEgJOQyU9I4+Uc+aHv81sMcnMl/Bn38nUukGh6+ELJommvg1PZDVNKf7
	Xf80+J+AcQ6/SnMQBSyfr13dM2Upvs5gsiC2QCrsN0yPqLK+jqXRwdD9JhwYzsylNznzBHIxINeRx
	flmZRYIpa2WM8Rt5fboVx6XLKB2LKJ9siqrrkkaRf7t1LhFk++133nXPrnBdJ4AwQqh778ytlr2YF
	11f7KQaEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igiL2-00035c-1v; Mon, 16 Dec 2019 04:50:32 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igiKw-000332-Nw
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 04:50:28 +0000
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com
 [209.85.221.182]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id xBG4nr73031332
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 13:49:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com xBG4nr73031332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576471795;
 bh=5/7EtpYysHXSpkosM3HRCkSpxTMVEjj1QJPpob2x148=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UkWkxvBEaIfR2P9nc9Rn4RGtqDGe+VvgoxSnvfANZoYzMkLtcXjfVVK/fsVDHDeEu
 3vBMLZROVuiftulpUeCgZR09Q8RvCs/cMORXilEs/HGgZlVue7Wq2/2li6PC3fuwDu
 IYUpa2xE99GixAgVU+dKlmC/JUp35VOIuBSvZ/MCWZyghCJC6hUN/mkDZbYXr3+nG7
 KVc/CE7i0PI6DlzAVsSKBYJGbbqnAVPYyoLPz3zHusfRdd6sJwIEgC5Dso3Ki98BsS
 C35t5zMOShRJLfakDWjhn4dwOdPP+/9/I38DgOjNO1lNs4C+COcjAfAgljjU+obR4K
 kUM/oU15dD1Ow==
X-Nifty-SrcIP: [209.85.221.182]
Received: by mail-vk1-f182.google.com with SMTP id c129so489116vkh.7
 for <linux-riscv@lists.infradead.org>; Sun, 15 Dec 2019 20:49:54 -0800 (PST)
X-Gm-Message-State: APjAAAUjKWrkJ9EZs2FlIbyFC8/f38tJHzy5X+K+/uocU1Jtb1asQxGu
 I6G6MHr5WlVEe8qizUnovxtZFcL80Hhrz3RaFSo=
X-Google-Smtp-Source: APXvYqz35kOLUZ2z+OuiTtbn2CHp56wPlFE2bzoPB78j9pXor4kPi41IeSe4cHug5H0b0brmIToB41xZkiyYqevu5m0=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr10233164vkc.12.1576471793202; 
 Sun, 15 Dec 2019 20:49:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575879069.git.tommyhebb@gmail.com>
 <1eaa4143fdb000563cde114bb7e0166b1fc229bf.1575879069.git.tommyhebb@gmail.com>
In-Reply-To: <1eaa4143fdb000563cde114bb7e0166b1fc229bf.1575879069.git.tommyhebb@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 16 Dec 2019 13:49:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNARHuMaKUtsX8qJx2XiH+OciNFo+w_WBqZHKHV+ZQSvAwg@mail.gmail.com>
Message-ID: <CAK7LNARHuMaKUtsX8qJx2XiH+OciNFo+w_WBqZHKHV+ZQSvAwg@mail.gmail.com>
Subject: Re: [PATCH 1/4] kconfig: list all definitions of a symbol in help text
To: Thomas Hebb <tommyhebb@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_205027_017372_BB2571C0 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 5:19 PM Thomas Hebb <tommyhebb@gmail.com> wrote:
>
> In Kconfig, each symbol (representing a config option) can be defined in
> multiple places. Each definition may or may not have a prompt, which
> allows the option to be set via an interface like menuconfig. Each
> definition has a set of dependencies, which determine whether its prompt
> is visible and whether other pieces of the definition, like a default
> value, take effect.
>
> Historically, a symbol's help text (i.e. what's shown when a user
> presses '?' in menuconfig) contained some symbol-wide information not
> tied to any particular definition (e.g. what other symbols it selects)
> as well as the location (file name and line number) and dependencies of
> each prompt. Notably, the help text did not show the location or
> dependencies of definitions without prompts.
>
> Because this made it hard to reason about symbols that had no prompts,
> bcdedcc1afd6 ("menuconfig: print more info for symbol without prompts")
> changed the help text so that, instead of containing the location and
> dependencies of each prompt, it contained the location and dependencies
> of the symbol's first definition, regardless of whether or not that
> definition had a prompt.
>
> For symbols with only one definition, that change makes sense. However,
> it breaks down for symbols with multiple definitions: each definition
> has its own set of dependencies (the `dep` field of `struct menu`), and
> those dependencies are ORed together to get the symbol's dependency list
> (the `dir_dep` field of `struct symbol`). By printing only the
> dependencies of the first definition, the help text misleads users into
> believing that an option is more narrowly-applicable than it actually
> is.
>
> For an extreme example of this, we can look at the SYS_TEXT_BASE symbol
> in the Das U-Boot project, which also uses Kconfig. (I could not find an

"Das U-Boot" is a moving reference.

Could you explicitly say the release version (e.g. v2019.10)
from which you took the example?


> illustrative example in the Linux source, unfortunately). This config
> option specifies the load address of the built binary and, as such, is
> applicable to basically every configuration possible. And yet, without
> this patch, its help text is as follows:
>
>   Symbol: SYS_TEXT_BASE [=0x00200000]
>   Type  : hex
>   Prompt: Text Base
>     Location:
>       -> Boot images
>     Defined at arch/arm/mach-aspeed/Kconfig:9
>     Depends on: ARM [=y] && ARCH_ASPEED [=n]
>
> The help text indicates that the option only applicable for a specific
> unselected architecture (aspeed), because that architecture's promptless
> definition (which just sets a default value), happens to be the first
> one seen.
>
> Because source locations and dependencies are fundamentally properties
> of definitions and not of symbols, we should treat them as such. This
> patch brings back the pre-bcdedcc1afd6 behavior for definitions with
> prompts but also separately prints the location and dependencies of
> those without prompts, solving the original problem in a different way.
> With this change, our SYS_TEXT_BASE example becomes
>
>   Symbol: SYS_TEXT_BASE [=0x00200000]
>   Type  : hex
>   Defined with prompt at Kconfig:548
>     Prompt: Text Base
>     Depends on: !NIOS2 [=n] && !XTENSA [=n] && !EFI_APP [=n]
>     Location:
>       -> Boot images
>   Defined without prompt at arch/arm/mach-aspeed/Kconfig:9
>     Depends on: ARM [=y] && ARCH_ASPEED [=n]
>   Defined without prompt at arch/arm/mach-socfpga/Kconfig:28
>     Depends on: ARM [=y] && ARCH_SOCFPGA [=n]
>   <snip>
>   Defined without prompt at board/sifive/fu540/Kconfig:15
>     Depends on: RISCV [=n] && TARGET_SIFIVE_FU540 [=n]
>
> which is a much more accurate representation.

This is nice improvement (fix).

Just a nit about the help format.
I think "with prompt" / "without prompt" is redundant information,
and a bit annoying.

For the definition "with prompt",
the next line is always " Prompt: ... ".

For the definition "without prompt",
the " Prompt: ... " line is missing.

So, we can know the presence of the prompt, anyway.


To simplify the for-loop, how about the code like this?

        /* Print the definitions with prompts before the ones without */
        for_all_properties(sym, prop, P_SYMBOL) {
                str_printf(r, "Defined at %s:%d\n",
                                prop->menu->file->name, prop->menu->lineno);

                if (prop->menu->prompt)
                        get_prompt_str(r, prop->menu->prompt, head);
                else
                        get_dep_str(r, prop->menu->dep, "  Depends on: ");
        }




--
Best Regards
Masahiro Yamada

