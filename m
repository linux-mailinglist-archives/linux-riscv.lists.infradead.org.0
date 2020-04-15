Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC71AAA58
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 16:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TrCr8YaKtrXKuZI1mDLlJ9OwmvLg/1PUlN/6+Ie7Iy0=; b=KFk9alLA+Oph1c9u+svhuzWcw
	GBJ7zDZSCT5Z/XsC0Bvz/Dxea9STZsIbwckGSMGB28K3fBiZPZQAHawrhN9FC5xy9LXPQsRr0aICj
	k/V679TZeVf4M8+30E1mgT8zpZD43hBQtLLnnD2xVy7CQDxVxsqu26pIoUTUduBnefr/ov80KRITW
	kzOeosbNkMjJN3QOLXUYKjgPAzeh0gtiydax+ZmEIfnTTx5FYXyb9cj3ldhjrpWpK8oYuJB3Zq+V4
	WPoKcTmuq6iBd+KRIoR43fRNDiFGLpw9LiFxzuPmlUN9qlgAawIMt23irg/NZTruzkm2qGJg8A2mm
	QHDVKx2hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjFD-0007zD-FH; Wed, 15 Apr 2020 14:42:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjF9-0007yU-Bd
 for linux-riscv@lists.infradead.org; Wed, 15 Apr 2020 14:42:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id u65so49218pfb.4
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 07:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TrCr8YaKtrXKuZI1mDLlJ9OwmvLg/1PUlN/6+Ie7Iy0=;
 b=Rzm5dxhTeaUONGsH972GQ1cAaKsulUeSHXueDBEsqI8cmXTh3SCPNcNqjQ5CFDTa5h
 EBQ9soIZStcseclUh0yP5zlUIowfh0ce0sZYGy/PfzX/U+/NGIrjEh3eABab7h+60/hz
 pgsokVn1zTw/hG3mJPqkplXu3r554x7uKaTXB0r0q3T6r1ELTx5v9wViytUbbto8Q8Ip
 dpym/NWKqOLMvWLZOorTFDWkgr536ve61EELqLbC0ALfHW0VWLJHXG9ZAzadzRLExZCW
 X2qP2xQy66PsBltBjdCkqzG3vbqeK2UOlflEoG9zaYgGLAsb6H997UH8MDClWBTP/Uka
 +rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TrCr8YaKtrXKuZI1mDLlJ9OwmvLg/1PUlN/6+Ie7Iy0=;
 b=gW5t1SOEqp5w1+CVcXJhsivTuqGN2pXVXKZUN60Ghhnk6pFCfnLjXfwa0VNNdJ6mTs
 /JLz4kAYmXATmR7bDkBOc3YuQ+fV8T7fIwozSWXxGQKVmsahtFYSyoRagn2RzX0JiY1I
 DwC4LdD1rFCTMtHDuRyyOn5jkkHOOacFL4AAQgGahRP2L3MA/MJ4J8D/OZ2sCTv6oFhG
 IiQYvtuckOOihBgUqvCMfmPjZ2wi6ZkgqYwHPf8b/R39K1qaAvieQp+BO9F6Omc8OOVY
 MYoGXO5N2lJDV4221o+RDq+NCDfPLk4p8YBpAMBIaRsxOXRsFjUJG26mtlDUOmdyUBcB
 4hLA==
X-Gm-Message-State: AGi0PuYo+Wjom+XFguazuJusghJFlOHnqZalEu84FAhOLaMnizcEII9B
 jqhcPGo1JzQxSHlYINMD9uG4bw==
X-Google-Smtp-Source: APiQypKrD/31MKHUWmycbWqZm3NAXgiF4vyGNvf1olANylF0PjsMdQ5ZiArHj6E665hYlxTSD05JxQ==
X-Received: by 2002:aa7:8d97:: with SMTP id i23mr27432269pfr.325.1586961741436; 
 Wed, 15 Apr 2020 07:42:21 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id i15sm2199851pfo.195.2020.04.15.07.42.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 07:42:20 -0700 (PDT)
Date: Wed, 15 Apr 2020 07:42:17 -0700
From: Fangrui Song <maskray@google.com>
To: Ilie Halip <ilie.halip@gmail.com>
Subject: Re: [PATCH v2] riscv: fix vdso build with lld
Message-ID: <20200415144217.cxxdfeeepzgikp4n@google.com>
References: <20200415142959.25673-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20200415142959.25673-1-ilie.halip@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_074223_421396_7C33B3ED 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jordan Rupprecht <rupprecht@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-04-15, Ilie Halip wrote:
>When building with the LLVM linker this error occurrs:
>    LD      arch/riscv/kernel/vdso/vdso-syms.o
>  ld.lld: error: no input files
>
>This happens because the lld treats -R as an alias to -rpath, as opposed
>to ld where -R means --just-symbols.
>
>Use the long option name for compatibility between the two.
>
>Link: https://github.com/ClangBuiltLinux/linux/issues/805
>Reported-by: Dmitry Golovin <dima@golovin.in>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
>
>---
>Changed in v2:
>  * a comment line dropped, another one slightly reworded
>  * added Nick's Reviewed-by
>---
> arch/riscv/kernel/vdso/Makefile | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>index 33b16f4212f7..a4ee3a0e7d20 100644
>--- a/arch/riscv/kernel/vdso/Makefile
>+++ b/arch/riscv/kernel/vdso/Makefile
>@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
> 	$(call if_changed,vdsold)
>
> # We also create a special relocatable object that should mirror the symbol
>-# table and layout of the linked DSO.  With ld -R we can then refer to
>-# these symbols in the kernel code rather than hand-coded addresses.
>+# table and layout of the linked DSO. With ld --just-symbols we can then
>+# refer to these symbols in the kernel code rather than hand-coded addresses.
>
> SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> 	-Wl,--build-id -Wl,--hash-style=both
> $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
> 	$(call if_changed,vdsold)
>
>-LDFLAGS_vdso-syms.o := -r -R
>+LDFLAGS_vdso-syms.o := -r --just-symbols
> $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
> 	$(call if_changed,ld)
>
>-- 
>2.17.1

https://lore.kernel.org/linux-riscv/20200402175354.pzhzhumlqsjk66nu@google.com/

Reviewed-by: Fangrui Song <maskray@google.com>

