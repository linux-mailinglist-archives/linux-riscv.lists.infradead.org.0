Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEEA19EBFF
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Apr 2020 16:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iq7bhlEuP87tC6Doi+ny260jw1k9nQHO7+JOk7S3IkY=; b=Pm+k9/G325HP7hDPuE6n2HkDP
	eNv1w7xdPY6pJdbrRr4yACNubYONF0rRyWsdQT07yUePeuCz3j56FVaBMqq/fMDQitCTNCrbpu2YF
	FX1Cmv8f8dcJQriVENnN1XVc1plND0ER+Xnt08HhfCjDmq1JjYS2MuQxFV0UXksEsdzRFYCDXjoYo
	5tBtevf5V58e8N8awY1MQiAuoaB2Yry1mTwrqqmjqUQe1ZC4v4EH8ibKrnBBsUweMdg8YTgRCfiBh
	VLZnLHwnd2+C0INEMbs+MvLW2F0bqW/ZJNxv9TKEPsC3p17nyblHPQwV4jNbbmgUCcpd427tf8wOI
	qEPkO/OFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6Oa-00043p-U8; Sun, 05 Apr 2020 14:37:08 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6OY-00041Z-37
 for linux-riscv@lists.infradead.org; Sun, 05 Apr 2020 14:37:07 +0000
Received: by mail-yb1-xb44.google.com with SMTP id 11so7240886ybj.11
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 07:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iq7bhlEuP87tC6Doi+ny260jw1k9nQHO7+JOk7S3IkY=;
 b=ceoJ45Knn9Zl8eU0DnsRGTYDGS/rlw59aWGmmu4eKd7i+po8bbRfvj35jP480FpTik
 +dv7MMJyUBYx9tvSzv4Ur+3QXjnxBxvee3eCTh/znJDHI/At3sWu1GFiGsLAsO7RXS8t
 uVSULXAHxbwXrttJxRz60IX+IVJ6OxEO9Ynjab00ggtC09tELS2JFRWXSkzsRHRDBBXd
 oANpCMHo4In+LXHYG1uwnaTVbHKuE+wB4S15wFRhVp6lUQWhGd5uwWeWu6Xoi33UpWXr
 cODrBQJzQC0EsFwp6o4npxr+cARk7fzU6Usf7v9uAt9+NEOfKp1fpfEVKBBFTdOT/q4K
 RnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iq7bhlEuP87tC6Doi+ny260jw1k9nQHO7+JOk7S3IkY=;
 b=PN0/1KrnLs6aZUl+louQLTvXN2xgGaobY4O2BbD18EsnonQVkwsCMQXSLsCjxYBqnb
 LN2DZOY+58nva22gmVukYSzhjvjoqh8MT6KbuySh8oc9xfhk21WoxpZMYN4DcRqDZwcA
 tTyv1W/I1z74Pv1JSxRFirjv0KCKtXWKZHUskMjB73O+8mtqgRg6E2a7mlWYhZ4jBi0S
 1vA7vs+icHsTp4iWbBeY6NaZg5cwppTC6uLh5V6qiJ+BnaB0tY6TZyif6sfJy4P3JH28
 QLoI90tjEtssT+L9IgxOWFYaQvg/KAeiKTth7cPtK9cxgDRwg3BiPfbsNbf56qAfQ7+g
 zdvQ==
X-Gm-Message-State: AGi0PuYdLM2BKIRdopB9v+Z3EnGXxsl+jzAIs43jEaZylMv2tF/+QKJ/
 kT0nDD0yjkUqOg6P9H1H6RLiGZEUx00sL+yHT7g=
X-Google-Smtp-Source: APiQypLYFc4hPKnBc3SI599uWHHdT62VKldY45eeM+yxx81Vkxo1ZqqvUh4Ibry1DdjGmKA319R54ohKQmegiUiein8=
X-Received: by 2002:a05:6902:686:: with SMTP id
 i6mr25980689ybt.56.1586097425185; 
 Sun, 05 Apr 2020 07:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200318011144.91532-1-atish.patra@wdc.com>
 <20200318011144.91532-3-atish.patra@wdc.com>
In-Reply-To: <20200318011144.91532-3-atish.patra@wdc.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 5 Apr 2020 22:36:53 +0800
Message-ID: <CAEUhbmXH0GP_=r-jUHNCB9wPkSoh6_BNWtUG1SN57QPgLCtDNg@mail.gmail.com>
Subject: Re: [PATCH v11 02/11] RISC-V: Add basic support for SBI v0.2
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_073706_129380_A0C15F0A 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 9:11 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> The SBI v0.2 introduces a base extension which is backward compatible
> with v0.1. Implement all helper functions and minimum required SBI
> calls from v0.2 for now. All other base extension function will be
> added later as per need.
> As v0.2 calling convention is backward compatible with v0.1, remove
> the v0.1 helper functions and just use v0.2 calling convention.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/include/asm/sbi.h | 139 ++++++++++----------
>  arch/riscv/kernel/sbi.c      | 243 ++++++++++++++++++++++++++++++++++-
>  arch/riscv/kernel/setup.c    |   5 +
>  3 files changed, 314 insertions(+), 73 deletions(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

