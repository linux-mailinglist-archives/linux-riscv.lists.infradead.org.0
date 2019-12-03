Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A78310F55C
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 04:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nSSI5Pl4WsOsY1gybGzxrdiZXoJtDsuzjGBtDtfi5nQ=; b=H14X7z16iNk6MQYp7NN+AOkVJ
	SdNOBlvzJ9q4Fv9jxYMPSbRg5QjtN/cBRhwBeFa7gGoNA+KdgU1c4R5HrM6thB76dTu7y/fU7hDc0
	BMKsHVx+BXhIROYzelW1OejuIN1tlp8QEgo0DUhtHos39PZ+HTPyG+XhrF3MnkTLnKf8I87YNrsva
	fy76ebmsPsbcqpzJkzVmOgaVjpau7kJUyT82dgCu3rJOplstTGZhvLaU3RdcZAOqyI/1V0PgLnwaR
	yzihpWr5/Eva3lVzA0ksHwZ9wGMpnZIiAqadr3/UWjvGENHdwOV3ofeM1WAfbhOFL6qUZ0rxzk2In
	CctO1Eh7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibyTf-0004V1-1q; Tue, 03 Dec 2019 03:03:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibyTa-0004Tt-Mr
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 03:03:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so1805964wru.4
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 19:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nSSI5Pl4WsOsY1gybGzxrdiZXoJtDsuzjGBtDtfi5nQ=;
 b=RSZFGEoTRXXTEiFiqV9Ygwye58GVZCrG3BAvVe1gR2fWzt7MnfPmLjaDG3tYawEz6E
 lJKpLVwxLdFROe8VzQJkYfds1g+KMGzf9/5u79iJ9Ba3wmvbIYHb8CZ/Q+hhGxmyP9VX
 QnSvtItTZQ2mxF20nrfwZbQDVrBo4efctNSQKQnQbpQvn0yR4VNtaDvJB0MJ2S1BoX+x
 ipAPJ6JjTJBw7Qdz4nr1EiBap+l86VNHjsApR0JU/74Jf+mM2TOO5+Zq7jpb1HU/LGW/
 kRZVkGM8OzPNN8cA/1yjjwqeQHVTY75vjaLI2AfSaJbe724IQBp0hQfVjjkqN40PIHBa
 7Ong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSSI5Pl4WsOsY1gybGzxrdiZXoJtDsuzjGBtDtfi5nQ=;
 b=lYcFGbbGXvu+ufzNzkFbutCQnASZHsKkHfHX+OlSllqoADgpFnsAPsO9wyP9wjsUtG
 tkiqIoKTCml8VBBz6Lf+DaDU8twbOl4acvjIyyp+yQRFaUFwTgZc4WK7uQVBQCJSc0Ik
 O2i79UD4aEaBzUx+2UI5lJ/A2JK+YEIXSY+2pd2npCNQkcPRICevajkfDzzyWRpbB0Qz
 eo3cLK2y5WYNVA7ovBFwjR27RMEUAuiuqNxJ3V2a1fl333SVmrZYiwIMk2zvx/5nBkCW
 jDa/PqxEu4rJGq543P9o9LMSkI8NQ2Mx25J3T/Yej5H92t4iDLJmSKinuv+3xeaeusDH
 W2UQ==
X-Gm-Message-State: APjAAAUaREXPFacH3TLfthYr/h3OsrQX6Ycvyrw6qbejY/nqSu75irLr
 LwcB29PQLG2ExbOWg0mghd+EY0t9btBMi7donlGHxQ==
X-Google-Smtp-Source: APXvYqwxn8gi9d4Y7yeKhhhBKs3G3DMQuJJ8HdGF2Ye4GnVemP0+QYxC6GICLVsPw22G+e6/GlfU4MtK/Rv0dkTJCms=
X-Received: by 2002:adf:b746:: with SMTP id n6mr2388512wre.65.1575342223221;
 Mon, 02 Dec 2019 19:03:43 -0800 (PST)
MIME-Version: 1.0
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <mhng-2aaba21d-2b4a-45aa-9c76-809cb5b61e6c@palmerdabbelt.mtv.corp.google.com>
In-Reply-To: <mhng-2aaba21d-2b4a-45aa-9c76-809cb5b61e6c@palmerdabbelt.mtv.corp.google.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 3 Dec 2019 08:33:33 +0530
Message-ID: <CAAhSdy3yduX3Yorc=tECOJHH82K_uy+a997Q1qJRccxEOVGKFQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] QEMU Virt Machine Kconfig option
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_190346_768910_BF57483C 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 5:02 AM Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>
> On Mon, 25 Nov 2019 05:22:13 PST (-0800), Anup Patel wrote:
> > This patch series primarily adds QEMU Virt machine kconfig opiton and
> > does related RV32/RV64 defconfig updates.
> >
> > This series can be found in riscv_soc_virt_v1 branch at:
> > https//github.com/avpatel/linux.git
> >
> > Anup Patel (4):
> >   RISC-V: Add kconfig option for QEMU virt machine
> >   RISC-V: Enable QEMU virt machine support in defconfigs
> >   RISC-V: Select SYSCON Reboot and Poweroff for QEMU virt machine
> >   RISC-V: Select Goldfish RTC driver for QEMU virt machine
> >
> >  arch/riscv/Kconfig.socs           | 24 ++++++++++++++++++++++++
> >  arch/riscv/configs/defconfig      | 17 +++--------------
> >  arch/riscv/configs/rv32_defconfig | 18 +++---------------
> >  3 files changed, 30 insertions(+), 29 deletions(-)
>
> Thanks.
>
> LMK if you're going to spin a v2 with the updated commit message.

There are some conflicts for Linux-5.5-rcX. I will rebase this series and
also update commit message.

Regards,
Anup

