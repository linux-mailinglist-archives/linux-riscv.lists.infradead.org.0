Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CA217B4E6
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 04:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wHaCOyqP2WWjD8mfCv3YCZLYmNbyCJpMXSFySbHb144=; b=ZSXOCY1jpLWZ/BAIxYvLnyekM
	EEvUv4usu/QEyqQvtA9xqGBtkAFmS7vOrD0drlRvB9yyI2sGL+abk5eIDaULl4pqmxhgcXvtYdlrc
	cN3wV87oYccIxVp/BZxfO1uaTT03kdvWULIr1VEhqaMv0sNTTJ2XcVQFEI87acCokrdfW1wzwq4AZ
	47LJ/7bD++eveavZVXoLAf0dfc7/Se54tHcX8JJprSpUpxkBySDEs0FcWxHLxBbGP2Y0QvYeP2YoU
	aPc0mWQeRiDE4w51sDi8hAEYCMMeXGbFzswia058awX35cedixvS1NDQCMWChFY3G/A9qPxOSnJxT
	QSfZT56mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA3jJ-0000PO-Up; Fri, 06 Mar 2020 03:32:53 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA3jF-0000OU-R0
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 03:32:52 +0000
Received: by mail-yw1-xc43.google.com with SMTP id x184so992201ywd.6
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 19:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wHaCOyqP2WWjD8mfCv3YCZLYmNbyCJpMXSFySbHb144=;
 b=FZCyClEkILXJtjPwL5CSf2dtrY8c4ImGIQ/3j9lq+y9O1DbCZjjdc62j4ndbnrSQQt
 xyRFRzn0i9UYv3YxD4C+BLuxsek7aHlOi1JW1slWQIHI2/CLmoQISATML7f/If9uxxxx
 Hssye2wCPwrcwn0dmHi6o9cMFJ0542xG1/n8V2YBcE8RdFZpkJhTY4eTQKbWQBJeBI6r
 45qOnwYISNeigZ6laog+yt6oHcU58hEM/vKS3VgeIwlrmtGqCJDJx7sFdi6QBaaPQnC4
 8z3KwdXqge3PrNNCSFGvljlvU2KSDOvmWeiY/2vOnZmYoMr8VYQXmZLbK8SMlxaaCfEe
 DXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wHaCOyqP2WWjD8mfCv3YCZLYmNbyCJpMXSFySbHb144=;
 b=gwT2D7GUW+srJ8P25T6K/jjmznpzKhQf4ZGdV3jQ9hIEBuPyzUh4DBdcJ26C/ltaSf
 uc1iQuC7i9bHWGicEmO5krO+fzImNcXMLunOoQca60iH7cWC/4ijVqsDEv4tHb0OGv4i
 7Wti9sANBNrwqlmGy4FpSFZOSujXCVDDxqP91h7UI+nSNMJsIBYySOGNwnSupGcvhBCb
 VNFWRWye8txmReSa605Vp7kgi3uMjSTnq/n/jdTFOT+0TluVb5+LSk8j22AYtlCsxiJS
 xJPAPYqNx898RtnQw+3IAklfeEWEm8foAlfZyEFpWfv8OVN4t/vKnDSvBKQVau86VUqJ
 w6Dg==
X-Gm-Message-State: ANhLgQ3n5RnVRJPKMYKk2KZLtG093luIAdAs80lJx0yloPf8hlP/Qe0u
 CrWQuTLD2IGKtHeIFAxvAzmp6gDfBTNUfAkFJzs=
X-Google-Smtp-Source: ADFU+vu1LIATmaD+zA7Z2GpCD+Eoo6JMw+w9RdOwO4k3qpEvMp6gaxrgoYzrb+hN/hkNLk97BezeQf4lXoqGN0Slj/o=
X-Received: by 2002:a0d:ca8e:: with SMTP id m136mr1839136ywd.349.1583465566396; 
 Thu, 05 Mar 2020 19:32:46 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-2-atish.patra@wdc.com>
In-Reply-To: <20200128022737.15371-2-atish.patra@wdc.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Fri, 6 Mar 2020 11:32:34 +0800
Message-ID: <CAEUhbmXO1pQjtd=4gqxxM8V=6=7zQu=7Hx2rAQefK_JC5azRww@mail.gmail.com>
Subject: Re: [PATCH v7 01/10] RISC-V: Mark existing SBI as 0.1 SBI.
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_193249_878015_FC9D4D93 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 "Chang, Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, nickhu@andestech.com,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, clin@suse.com,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <anup@brainfault.org>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>, linux-riscv <linux-riscv@lists.infradead.org>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 10:28 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> As per the new SBI specification, current SBI implementation version
> is defined as 0.1 and will be removed/replaced in future. Each of the
> function call in 0.1 is defined as a separate extension which makes
> easier to replace them one at a time.
>
> Rename existing implementation to reflect that. This patch is just
> a preparatory patch for SBI v0.2 and doesn't introduce any functional
> changes.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/include/asm/sbi.h | 44 ++++++++++++++++++++----------------
>  1 file changed, 24 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 2570c1e683d3..b38bc36f7429 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -1,6 +1,7 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2015 Regents of the University of California
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
>   */
>
>  #ifndef _ASM_RISCV_SBI_H
> @@ -9,17 +10,17 @@
>  #include <linux/types.h>
>
>  #ifdef CONFIG_RISCV_SBI
> -#define SBI_SET_TIMER 0
> -#define SBI_CONSOLE_PUTCHAR 1
> -#define SBI_CONSOLE_GETCHAR 2
> -#define SBI_CLEAR_IPI 3
> -#define SBI_SEND_IPI 4
> -#define SBI_REMOTE_FENCE_I 5
> -#define SBI_REMOTE_SFENCE_VMA 6
> -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> -#define SBI_SHUTDOWN 8
> +#define SBI_EXT_0_1_SET_TIMER 0x0
> +#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
> +#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
> +#define SBI_EXT_0_1_CLEAR_IPI 0x3
> +#define SBI_EXT_0_1_SEND_IPI 0x4
> +#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
> +#define SBI_EXT_0_1_SHUTDOWN 0x8
>
> -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
> +#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \

nits: this line should not be changed

>         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> @@ -43,48 +44,50 @@
>

[snip]

Regards,
Bin

