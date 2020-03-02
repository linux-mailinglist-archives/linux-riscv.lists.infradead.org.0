Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45028175294
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:17:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KCTmb10bOyL8GRw+Oyexf3OwWsuoNpB9t1D6NPJLvXg=; b=d/lvNhn4HI/pUsu4OA6M8qEmT
	zHiq9eSpdZ8dbs4Xril7nQZB7ujT+n9Co/ofh7932oI4zeIFQKkRIYjKxP6Ev75DbbMM9o0bmnpPZ
	MnAcRycxNtfQldtdWRPyvMhZpF8zhxCVtzpojH/Wrjie6pyOj74+jZq5KIP9tA/pXtR8bEk3R52aD
	mR/UwKx95r6WVvuiOYWl9PJeUB1FTL0VHWBfc//Jntbz3+QPfMdCtxZgK+OemSYVU02wACZSnTQBa
	NyqVkLlBIzl1RhHXeM2zBGJLTfYzyjuLMwEdwOQ1Sr7bFp4VSOxmCYLOlFaFm6d+pF+TchAx7FIGR
	AA6lL4f6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cWK-0002Bx-M0; Mon, 02 Mar 2020 04:17:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cWH-0002Be-8z
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:17:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id z15so10779354wrl.1
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KCTmb10bOyL8GRw+Oyexf3OwWsuoNpB9t1D6NPJLvXg=;
 b=qCZGTHEUBzAd7JBvWv+0GANkyylmqzxzbdep53R9CQWAXD3DqQt9EEZT8hMnAYwBd4
 UxsZ3yaqHfmlAltx/yeKX18o3LyqvN/cxscms9rP7DOufoYFZYBjbjCXo8qjC0JB4xZl
 i4dNUpgz+DL0nGdcFfal83kx72VvRYirz4W1ZqKbTV179jyaUVpo+47tq88t2jrX6HhE
 DT4hH5OBg/LMX+uH/hfS5yV1kKsN11RlUFxXK9Sf/5jPfOdJHf2MLeGuxdPK4tqnY/5D
 4lGghsvX7twf82kax1IIpO+7J3UtInoLGp2mjIeKOpxjeR+NLzclr8O/Sr0Yqq8N1hle
 stdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KCTmb10bOyL8GRw+Oyexf3OwWsuoNpB9t1D6NPJLvXg=;
 b=OUZuR4pVZQ81ivSXvvqrj5WB9f/KiCQhFuPNo08CEGwDhovzVDw2xTpXF73I8SZ83+
 MNzLaau9/oiEhB0AgDckEyj1mna8N+08D8O2ObtC0eIy+XWDgcbPcx0TLI98fJIVb7mk
 vzhJ1OLfCJwa+XePhyl5Tn9yJG2ELy70gNd+8COOAz3stfXZZTFZV6l+MhHwPcwYjS1a
 ELyol6ez4/8zFqN2C1Zu9v2Ay0GhO5lwFsa3oivM6tNgtvuC3F7k8RjzU/Cg2ZCL9PeM
 3pIYltzX02XMfda/IYYCEHK3NSn5m74MF5rNjolBzEa1KYqBWvaRkp2ZlejOXZJ26rj4
 eJRw==
X-Gm-Message-State: APjAAAXsty0vDn0RF7St7YpYNrqJhsj+hRJjn9uvYsxQ2tin5qnMROSP
 ogwtbV13dC6eL+4ecz4lwYBgF1zGKqsc+nyoK81hMQ==
X-Google-Smtp-Source: APXvYqyAIu9AiZ9GhcPMgPDkJVVn6gKZuJlfJLqPasUS4yy9mNoOM6mGsx3NnG7VIaBMdnGgdB869QRM2iXTXMkYnrA=
X-Received: by 2002:adf:e90d:: with SMTP id f13mr21010154wrm.0.1583122647521; 
 Sun, 01 Mar 2020 20:17:27 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
In-Reply-To: <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:47:16 +0530
Message-ID: <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_201729_315292_F8E680FF 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 3/1/20 10:01 PM, Damien Le Moal wrote:
> > On 2020/02/29 5:32, Sean Anderson wrote:
> >> Hi,
> >>
> >> When booting from U-Boot I get an OOM. Perhaps this is related to the
> >> second cpu not coming up?
> >
> > Unlikely. It looks like your user space needs 2MB per shell (order 9
> > allocation). Since you have only 5.5MB free, that may explain the allocation
> > failure (if init is forking another shell especially).
>
> This should be before init comes up; when comparing this to your syslog
> output there are several more messages before init gets started.
>
> > For the second core not coming up, an IPI needs to be sent to the non-boot core
> > to wake it up. A Kendryte thing. U-boot should probably do it before jumping to
> > the kernel. I thought I had that in the kernel though. Will check again.
>
> I think it's a RISC-V thing. I should have U-Boot set up to start linux
> on both cores, but something may be misconfigured on that end.

You have to booti or bootm on U-Boot M-mode to make all CPUs jump to
Linux NOMMU.

Based on you log, it seems the second CPU is still spinning in U-Boot
M-mode and when Linux NOMMU tries to touch memory where second
CPU is spinning everything gets corrupted.

Regards,
Anup

>
> --Sean
>

