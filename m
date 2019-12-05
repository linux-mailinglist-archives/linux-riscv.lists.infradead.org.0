Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753891149CE
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:24:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uoew3w+WjCDvHa4nERX4szfxNTztaiIuTi5nYNUkYZY=; b=URJVmrb5ILmUh84/uMMgTKJ5J
	nITbTQfWpZdODn4lqq0lb1UcREAqJyC4TYGfdLCAM89WMKoG0SzbzcRrj+4Ax2lw3b2077fKeYi/6
	jxCW0oAzKLa93e1Tw8fN7vyQVV0P6jmtjmhKeRqDE4tLNetP2lqOBeGJLr2e4q33PsKZL0k9NFyUu
	z0m13B4eYckMQfnhPOC+L/nVZlnn1d5kPyhyUrin28VkpacBzLGURHPozGnUYqAa52ajkrAPlJlFs
	4r26RJ2g5odd3i4r3vxHZOUJbisavMRjNDGnHL1i+FJn6jlrhQ/ETYNmIOjZsZE4zI0dQRrBdugPD
	elUXzhiBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id0TR-0007c9-CF; Thu, 05 Dec 2019 23:23:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id0TN-0007bg-Rs
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:23:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id n9so5366082wmd.3
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 15:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uoew3w+WjCDvHa4nERX4szfxNTztaiIuTi5nYNUkYZY=;
 b=vlWRoepl00jLfiXESI0GCgAl5wxXlnr5e1i4KUimKoDa2Ab+iu2yxSM5HkhaHOGQUX
 kVP3wz3yMrBLYChAlm+JrIo7cr40RALBw2NKPcjcMt55KAxku8dJqbykXlnk9kEfdlfm
 yJTgkc3QNQMMebhIRne6lp+lfa+/q+AInAGOon2bzXPLp1YMqkeWy01PoPy78222hAmd
 hR1tx9sfHzojLy7Slwep84Z71mbYoRT3ZAOVNAdRfEDVL4r3LCExAN5Rs4SsfsRRP1xL
 tpDxx0eB3V3mPuv/FR6fJllox5q6mmh89fj35K9fYxcVUcHCjlkVHTh4fOrEEIMQXOZU
 iIog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uoew3w+WjCDvHa4nERX4szfxNTztaiIuTi5nYNUkYZY=;
 b=p9bPfllNUf4WzWvxoTZh4YY0MZZpdabvxRM15slLh9JSrsA+PygIxq0WNAk0I/wwGS
 d7sq/25ccCTBQmdzNNodD35vdWHR2Ze0Wn63aZYUpijjyO7T4HOUBawG0F7Yue/1i7tm
 j8r04WWrNhNMVEVkvHjfh98/fI7sdpvD2ysbGhyaacPjkiv9h7ZQJLlJjPHIoCX5LiKG
 jCgfsCGFd+b0RFX+lFs2QkAdDCygY8OrwXEqiOOxvx5kXVNTmGDglL7EoqK1jKz7yoj8
 siaCXhGGWrUirymdwRR9bCOxk5iAEo1QmKu8lrVUDrZSTa4R07bw/lT+x+pcFiLEPLUF
 HKUg==
X-Gm-Message-State: APjAAAVzZdCtYINzSyqvS1YGN4P7LlvG15bUpq+/j6B8tfxAWc4gLqTW
 CuDqh30Q4vBeEOweh0jdGQ6uF/uodLVq2JFvGyZ/lw==
X-Google-Smtp-Source: APXvYqz3qNfyynvmdufghI95by6GfxVqSiTFOJeqqtWbL44qExje+YkBX4Yuyji8d4GJFqWKeKcnLjW/D97Q6dCbDSE=
X-Received: by 2002:a05:600c:218f:: with SMTP id
 e15mr7287277wme.124.1575588227572; 
 Thu, 05 Dec 2019 15:23:47 -0800 (PST)
MIME-Version: 1.0
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
 <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1912050900030.218941@viisi.sifive.com>
 <CAAhSdy2ySO_TGL9EYsHnk2p=tceRGaVfogyhthqJEJf-AoOCYw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1912051512590.239155@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912051512590.239155@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 6 Dec 2019 04:53:36 +0530
Message-ID: <CAAhSdy0VXuhqXnEHTMwYKfDKQt2c5fU=ejXuz54c6LvwLRew_A@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_152350_049514_A89115A4 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 4:44 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 5 Dec 2019, Anup Patel wrote:
>
> > On Thu, Dec 5, 2019 at 10:31 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > > What leads you to conclude that this was done for SiFive internal use?
> >
> > Why else you need it ?
>
> Suppose you were to assume that I had reasons for doing it that aren't
> related to SiFive.  What might they be?

It does not matter what your reasons were. Having DEBUG options in
defconfigs is not the right way to do it.

I have posted v2 of this patch. Please have a look. It's much cleaner
now and does not have performance impact for people using defconfigs.

Regards,
Anup

