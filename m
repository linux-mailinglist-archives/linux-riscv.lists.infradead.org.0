Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0421B107C0D
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 01:34:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pbHj9oAoCIaTpPtDtfOTklB2pkDBwgvkn34bOKPHhKg=; b=bsIvpkln1Kxa1H
	KLwl7QJvjar/lgjIoab5I5u80PyDeURzuG71h/OUstlXQkSBzL8y5rb/esSWPRFaO4vyYk/X5qFJJ
	j59FfHJwpXidkoKGwnWD1CtHucMfwC1Nr5XFJYgF+ec5ZS+KA8hbaju42u8Y0yQfkFe0iV1DpaZ6Z
	Mg0FJbFf4HvXHufv0nWOcT8nArg7f7t4BzJQnc1GG/egGby+ZpeAu5jUmKkJ/5qhqZF2RfumWuxrQ
	312vJOyEMFM38e3Xbxwgh26aExIMbzdm1lE46SvVWNFuoBnTHWzFlS96srXPrD/oYF6Lr8FXB3U5H
	mbUeH/BfBJR5/KU6dm4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYJNl-0001U8-M9; Sat, 23 Nov 2019 00:34:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYJNi-0001TW-04
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 00:34:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id i187so160720pfc.7
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 16:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id;
 bh=Wc5BiZ4I36HRDEEesag6zOFOwEaj3z0DfK9Nrlush+M=;
 b=DAFRx87WKODf/taUcv5k3GFO0oVJuxdM0hqW2dr/FlpkY7X01nEEoYXCHuUiYfkweO
 xuInVbogrsuKkR8EYh0aRNgNGGJnzWDVyE6ZQ+KTdgIJqV3AFRRFkhu+0/XOLq4Hal6Z
 ajCWdNc3XxUYsgn0EGt1Ze91c8MzjiaEI2zGMNNfonWg/p7Q7YWLNOXFNpZFGY8kO+B5
 xTOwwcYcVTUZpc2wWUR8hWAjxE+rHRlsYmwWmddhEFPNNQj07mwkHCoNY5npl15+V22e
 2U1Q1M65y/usY/iclKE6/YOQvhjF1TqDsje3JAegdIAQXa6SfmrsDlCiepT3wC1Zoiep
 BCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id;
 bh=Wc5BiZ4I36HRDEEesag6zOFOwEaj3z0DfK9Nrlush+M=;
 b=m6eJ3kzvE2vxLythwmwddUVpmXn75cgjmCum2oJNzp/4ojrWv8P3SURVxEou3pWDwD
 Y4Anaf9JKlaIYv0xDiwrgUKILwlcKKJhhAPdLG087sxbqUg1Jsim5s6HciWb32v9V+xW
 9BZPcWOxApMOcAjypoYG/CPW1l4MpmvlQbuJK619cxMUj5tA+VP4ppirv0KeXC5ylbrY
 1DGxnmBT6vLPDjdzprlPitsWrsOIyBLHTwwTRmgjK9Jm9m0GHx77MhopAv2lteH8/zSP
 Ifej0XdKuhHJgGEOwdjr9UBy/Py+kYqDBygzMRjLvpAXCczYPIixvOPO6V9wa1bH/XQu
 H8Tg==
X-Gm-Message-State: APjAAAW0d6UzdaLDwobKOnaa7Mny02kOlNwaMYHJJ8z1QP42rabn4S69
 cJZ4Et3Kt0Qm1GhwlsTCeLFWv97kitU=
X-Google-Smtp-Source: APXvYqycGUwOGtI9grWjunlCYHSGXUm7Ws9eGxG4NRCjB1ejXFBbTbjFJ8i+ZHZ8PJptBniA/Nj0jg==
X-Received: by 2002:aa7:9a96:: with SMTP id w22mr21660060pfi.162.1574469272664; 
 Fri, 22 Nov 2019 16:34:32 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id x186sm8700961pfx.105.2019.11.22.16.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 16:34:32 -0800 (PST)
Date: Fri, 22 Nov 2019 16:34:32 -0800 (PST)
X-Google-Original-Date: Fri, 22 Nov 2019 16:34:08 PST (-0800)
Subject: Re: [PATCH 0/2] riscv: defconfigs: enable debugging options 
In-Reply-To: <20191122225659.21876-1-paul.walmsley@sifive.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-a92b32ea-0365-407c-9569-1ebce2d3b37f@palmerdabbelt.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_163434_068951_C4BB494E 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 14:56:57 PST (-0800), Paul Walmsley wrote:
> Enable more debugging options in the defconfig.  Debugfs is generally
> useful for everyone; the other options are intended to make it easier
> for developers and testers to catch problems earlier.
>
>
> - Paul
>
> Paul Walmsley (2):
>   riscv: defconfigs: enable debugfs
>   riscv: defconfigs: enable more debugging options
>
>  arch/riscv/configs/defconfig      | 24 ++++++++++++++++++++++++
>  arch/riscv/configs/rv32_defconfig | 24 ++++++++++++++++++++++++
>  2 files changed, 48 insertions(+)
>
>
> Kernel object size difference:
>    text	   data	    bss	    dec	    hex	filename
> 6665154	2132584	 312608	9110346	 8b034a	vmlinux.rv64.orig
> 6779347	2299448	 313600	9392395	 8f510b	vmlinux.rv64.patched
> 6445414	1797616	 255248	8498278	 81ac66	vmlinux.rv32.orig
> 6552029	1921996	 257448	8731473	 853b51	vmlinux.rv32.patched

Does it make sense to turn on some CONFIG_*_SELFTEST entries as well?  I know
I've found RISC-V bugs with ATOMIC64_SELFTEST before, but they do take a while
to run.  I just turned on 

    diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
    index 420a0dbef386..90001c3746cd 100644
    --- a/arch/riscv/configs/defconfig
    +++ b/arch/riscv/configs/defconfig
    @@ -100,4 +100,18 @@ CONFIG_9P_FS=y
     CONFIG_CRYPTO_USER_API_HASH=y
     CONFIG_CRYPTO_DEV_VIRTIO=y
     CONFIG_PRINTK_TIME=y
    +CONFIG_DEBUG_RT_MUTEXES=y
    +CONFIG_DEBUG_SPINLOCK=y
    +CONFIG_DEBUG_MUTEXES=y
    +CONFIG_DEBUG_RWSEMS=y
    +CONFIG_DEBUG_ATOMIC_SLEEP=y
    +CONFIG_DEBUG_LOCKING_API_SELFTESTS=y
    +CONFIG_LOCK_TORTURE_TEST=y
    +CONFIG_WW_MUTEX_SELFTEST=y
    +CONFIG_RCU_PERF_TEST=y
    +CONFIG_RCU_TORTURE_TEST=y
     # CONFIG_RCU_TRACE is not set
    +CONFIG_PERCPU_TEST=m
    +CONFIG_ATOMIC64_SELFTEST=y
    +CONFIG_TEST_LKM=m
    +CONFIG_TEST_USER_COPY=m

as an experiment and OE looks like it's still functional, but it looks like the
lock torture stuff keeps running and the RCU torture can't run at the same
time.

Either way, this looks good to me!

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
