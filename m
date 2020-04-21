Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED59D1B329A
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 00:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7EQSergzjvpSiVEiJAnccFwyc23McE189ccKP2C8IZU=; b=mhvFy5TJPxnJOO
	rtghMf7YMeTFGBOA8MsofFGLNfixNijCQzmwZjAeHcTBWM3gkK2lsD/Qsp+dxrN07cqz4DTGTNXBR
	RiWcfE7yclHE8BvfjNTAwum3In0hh7lXKK4fP/x6tSZWWdxffyW9FlYUnMGaXtILs7v37Ipz7QNRU
	tuzLxAEiARCA3LSqhvFHbIUbwNnEYRMPFk82wC7rjWMtKRPc/qbU4rzzkJR10nvTl6Oh1JbMUbtZx
	7FToco+nPOiplcdhEaADJ4Ibp/lHcu24o5VdxgYocuDet10baFVOSVlTa8D3uDLf5v35kWsKCaWMW
	MFrVNJXTge8DU+MFQ1CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR1Jp-0003Zb-Qb; Tue, 21 Apr 2020 22:24:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR1Jj-0003Wd-Jp
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 22:24:37 +0000
Received: by mail-pg1-x541.google.com with SMTP id h69so58457pgc.8
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 15:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=7EQSergzjvpSiVEiJAnccFwyc23McE189ccKP2C8IZU=;
 b=N47qBMdQYynOCMe8tPIGMk7163MLOoNGicsdZX87gb7l1Yr9yrAon0jajrPBP3GUsC
 cKj3FoUKYCQclKrENa2xyI6d9C+OplSscBn3XdyOUP2bric1otxXTOLOlmU6anYkMlaR
 EWpwcCDf3TtLygFmQzHWu5ZQASCoNU0EJFdPTKKjW+RwV6mYmVU4M5aDFo4ahOT+PRde
 oT3pwuCyu4Mf4eJWNuK530PQaUcVfmJLsWyRivVGsgbOgHOlc4grdGo+LscUZ/aJxbNZ
 jQkV4I9YOh5zfZiwg215OgQbPTSBpdub1NGUMZfMkcyXjjJTGEPaeptrFPvUx3t3hOdz
 p/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=7EQSergzjvpSiVEiJAnccFwyc23McE189ccKP2C8IZU=;
 b=IirhXpTncY0z71n3pm/cL7nLuko/26QBrLc7ZkMZHpvuWOIHGM/SIIagjEvqYAlNmp
 GeUv8rWN+v0jorQqG1RjENgQIGOY8G9LFldcPaAXSEtD1XHZphyVbqGDmw63H8YI2hO7
 HyEFyICzFm6GB0OUGlgb1OT9CCTGg78U6/7naNdIMlE2KcfTCwxSaH8zAnl3PvrAYehv
 XWFJzIgytg7EpGiIuowoCiMplpe1KU2d/gqrrWqrMfnoh8w3CEiRiTUILGchx9IaEpw7
 7kbMPHMC2FkAfXNJ4ugWAuPPKhBhGTpK8v1ZFcmeLyDIBIsBV/8NrrGMdvuHKcDz1ApW
 4IVQ==
X-Gm-Message-State: AGi0Pubws3wOP6VxL/0UUsYyVvm8+NYlqKytdX+mMLMgb1idNjyJKA+z
 /YPT4KK/DVBEjBIKx7JMsQLNuhvyfvO43Q==
X-Google-Smtp-Source: APiQypJDBXss1fi6+/Ym5brO0L44dDM/JDTSGL3T1UlfzUfLR2N7U1fsx9kunrUqZz5PBVvwmrk+MA==
X-Received: by 2002:a63:4650:: with SMTP id v16mr20371642pgk.99.1587507872358; 
 Tue, 21 Apr 2020 15:24:32 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id r63sm3534644pfr.42.2020.04.21.15.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 15:24:31 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:24:31 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 15:24:12 PDT (-0700)
Subject: Re: [PATCH v2] riscv: fix vdso build with lld
In-Reply-To: <20200415142959.25673-1-ilie.halip@gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ilie.halip@gmail.com
Message-ID: <mhng-8737e015-5064-456d-99cb-3e275321db5e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_152435_646665_6088D1D6 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aou@eecs.berkeley.edu, maskray@google.com,
 Greg KH <gregkh@linuxfoundation.org>, ilie.halip@gmail.com,
 rupprecht@google.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de, han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 07:29:58 PDT (-0700), ilie.halip@gmail.com wrote:
> When building with the LLVM linker this error occurrs:
>     LD      arch/riscv/kernel/vdso/vdso-syms.o
>   ld.lld: error: no input files
>
> This happens because the lld treats -R as an alias to -rpath, as opposed
> to ld where -R means --just-symbols.
>
> Use the long option name for compatibility between the two.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/805
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
>
> ---
> Changed in v2:
>   * a comment line dropped, another one slightly reworded
>   * added Nick's Reviewed-by
> ---
>  arch/riscv/kernel/vdso/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 33b16f4212f7..a4ee3a0e7d20 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
>
>  # We also create a special relocatable object that should mirror the symbol
> -# table and layout of the linked DSO.  With ld -R we can then refer to
> -# these symbols in the kernel code rather than hand-coded addresses.
> +# table and layout of the linked DSO. With ld --just-symbols we can then
> +# refer to these symbols in the kernel code rather than hand-coded addresses.
>
>  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>  	-Wl,--build-id -Wl,--hash-style=both
>  $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>  	$(call if_changed,vdsold)
>
> -LDFLAGS_vdso-syms.o := -r -R
> +LDFLAGS_vdso-syms.o := -r --just-symbols
>  $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>  	$(call if_changed,ld)

Thanks, this is on fixes.

