Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CFE112C12
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 13:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+AjDTonAmsm7wZu8WklNi+HJ8agPWk8VysMXQZfsZKE=; b=gMhjHWTHu+PQNqF67gsiDzg/z
	nZ6dVB0pZUiuq/OwTQ15cl6Y0T2IOIRyxai48tVWgJqRdh4IZ0EPTa679cufXd0Oj//xA5aWVg+Bl
	CNpdjk8Jzyw/SV8nMgSWFQ3bqoX58IPvU6xIUYTPrlLewC0BwNYkCFJeVZl58Hjf3F4PuMlN3KHkA
	d81uMI963We9lhDlAHCsZVdF6uO86cyulZCK4WjkKxZI4DpwPcaKLK2icRzKrSBb5S6a/iheUSq75
	mTsJO8gMsqOUiVMjRtCJdEM14aw4nhLobISM1U+y+7xg/+t6IHKPYX1KBBbKh1DNbceen6wzc+hJ5
	8wsrKIRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU8k-00079M-64; Wed, 04 Dec 2019 12:52:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU8g-00078h-PU
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 12:52:20 +0000
Received: by mail-wm1-x343.google.com with SMTP id b11so6846544wmj.4
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 04:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+AjDTonAmsm7wZu8WklNi+HJ8agPWk8VysMXQZfsZKE=;
 b=vH/p6mFxMPhIPXLSKA2MmsiYqVZ9uUjOZNFid+6FXr9akO+zxh1gfBMrnADzfxZMEj
 00irJcP2S7BHBMSCrV4FbggDPiFgxPUjxk9tMJ9dFAFVLy2Rk+m1P2qAZsdSlcnpwmtE
 w+6mVklka0as3TGY4RHjYYRnEIZry7WvgtCPJUj9zPElrCTEJL0IQkkxTmHPWTHxz2oB
 RLIj0qmdz6uRti13RsNX3nl93zHNZVffQblqpHIv7CYt7PA192gobMI4zj0nl0P2b4SF
 OOrW5g3zKOqpp10tEtDbk3siQq9/V/vq2ZO04cQtnVmqzKtC+nWUNqbbGyTstLtkPgeo
 C1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+AjDTonAmsm7wZu8WklNi+HJ8agPWk8VysMXQZfsZKE=;
 b=oEsDmbrykhlUGVbh1QcupqdneQ4wPHdfpA5ZMYHeXPR7HeJNCpBs2XZbBLtYg/uGjo
 onExe70CJpZqJnMacVGYeOYnC8N+IO56eXNPlH0/9AgK82EsZF/qo3IHbhUL8R7hAdxM
 SwHjcK3QkgT0qyovjTXCs3nZGI+O1BX2ZG6lzGGf382p9gR72iuHMchADlawPWAVspTw
 3s2oBj2w5ZzItVNps4Q3LsvSh6b7j9wQfuB4gvTemdLboARp+g+haDmCz8q4kjzLQtQh
 YHmkyyIbp+sW1GEBHR/XO91Teg/5IKTIxdhYtjRhGI+Y39JUvVTR7vTjLy3/pTnBRmRy
 af9w==
X-Gm-Message-State: APjAAAWpG4T3Xd8qB0aESPyP5lPfgZ/wajl+y8JkNMACk0VYHOHQCNz5
 PuL3DdlU8p6sKziYY/3t/W8k8d6onm6rmrd4zlTnQdoZ+r2FWg==
X-Google-Smtp-Source: APXvYqzj2pSXDV+iU9KbyWjHve9YSIvZZFjycknEy9iuaV1MbCim9rQbbcEMFnhf94zkA+UiVRmDK/61S77Gpw4NJ/4=
X-Received: by 2002:a1c:30b:: with SMTP id 11mr37382528wmd.171.1575463936705; 
 Wed, 04 Dec 2019 04:52:16 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Dec 2019 18:22:06 +0530
Message-ID: <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_045218_890200_A3FA250F 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 2:22 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Linus,
>
> The following changes since commit 5ba9aa56e6d3e8fddb954c2f818d1ce0525235bb:
>
>   Merge branch 'next/nommu' into for-next (2019-11-22 18:59:09 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc1-2
>
> for you to fetch changes up to 1646220a6d4b27153ddb5ffb117aa1f4c39e3d1f:
>
>   Merge branch 'next/defconfig-add-debug' into for-next (2019-11-22 18:59:23 -0800)
>
> ----------------------------------------------------------------
> Second set of RISC-V updates for v5.5-rc1
>
> A few minor RISC-V updates for v5.5-rc1 that arrived late.
>
> New features:
>
> - Dump some kernel virtual memory map details to the console if
>   CONFIG_DEBUG_VM is enabled
>
> Other improvements:
>
> - Enable more debugging options in the primary defconfigs
>
> Cleanups:
>
> - Clean up Kconfig indentation
>
> ----------------------------------------------------------------
> Krzysztof Kozlowski (1):
>       riscv: Fix Kconfig indentation
>
> Paul Walmsley (4):
>       riscv: defconfigs: enable debugfs
>       riscv: defconfigs: enable more debugging options

I had commented on your patch but my comments are still
not addressed.

Various debug options enabled by this patch have performance
impact. Instead of enabling these debug options in primary
defconfigs, I suggest to have separate debug defconfigs with
these options enabled.

Please address my comments and send this patch in
separate PR.

Regards,
Anup

>       Merge branch 'next/misc2' into for-next
>       Merge branch 'next/defconfig-add-debug' into for-next
>
> Yash Shah (1):
>       RISC-V: Add address map dumper
>
>  arch/riscv/Kconfig.socs           | 16 ++++++++--------
>  arch/riscv/configs/defconfig      | 24 ++++++++++++++++++++++++
>  arch/riscv/configs/rv32_defconfig | 24 ++++++++++++++++++++++++
>  arch/riscv/mm/init.c              | 32 ++++++++++++++++++++++++++++++++
>  4 files changed, 88 insertions(+), 8 deletions(-)

