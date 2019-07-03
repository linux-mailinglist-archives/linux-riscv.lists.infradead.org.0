Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8636D5EBCA
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 20:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79CjsaHnH6ED/3o8PMViiK0tQAXw36nO9CR+Eui9OoU=; b=qvwfO/UdN/PXDV
	yKtKlQvTae4cBU+WNOacfEn8yFbjSJT8O44yKY+KCQx6d/KuxZzcs3ojihWvpx1u3OAGifFBo633R
	XaHvM9sSTsrzFAfrgMxfSWbUc3lLrPMNa4EBL/GO8iFB4PVJ457++tRqvC2zZ7wcw1EJfbjZX0yBr
	lLejivrvCPpC8x7NPDQjmPgpfFt/vrC1p8tNJkNML4OxjQQQEFnlxkcd3B2gMuWTg0w/ZuYywsbax
	gO8xSzXB/iKlTALW9qzRaYhKGqTOmpPIMjB7+e95qvw4EiIvnO6mf6sPsvV7Gy3WhbwEj7/PU7RfZ
	18fcWvujMYdFV4SYWcpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikER-0006Ox-4t; Wed, 03 Jul 2019 18:43:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikEM-0006OM-E0
 for linux-riscv@lists.infradead.org; Wed, 03 Jul 2019 18:43:47 +0000
Received: by mail-lf1-x143.google.com with SMTP id p197so2516325lfa.2
 for <linux-riscv@lists.infradead.org>; Wed, 03 Jul 2019 11:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9+1ik/vvOveRHv6gC+vDCsa/NHe6vb//8HQCEW5cYfo=;
 b=ON3AqXpT0V7isG9+j7JZBvuqy4Kap3GDnft3GXOvwOEvAH4TZZ/Eo4sp5enHq9mcK1
 xYgaHeZ1s5Z12So406hFfrw+DQcBIj8VhduCBb+4Bkx7My8FsU2wmNHWiJN/osCBKthw
 6x7O2b/tkLQ8KRvUw/iD9Gp8gShZQpqQsJo+ImQIq6YbleUsyiIPTuSvRtfpr4YBy7hb
 53v6O6RmJAc3h5GslmR5dSdLqf+gQzuw0VYvoEVyV06CBPoF52GEPnG6mfXEZLLa3+jQ
 RsaW/o6aLqQxidSpWMECeGAf4cDvDxHnGQiwHouPN8us1AZ6Kf19a+81ruAuMXfLWOh0
 T7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9+1ik/vvOveRHv6gC+vDCsa/NHe6vb//8HQCEW5cYfo=;
 b=cyddhvfMZUAR+b6ZLLk/NsKhbyEVZcOkS32+IqMjkCktIe6zARm2h+y91Go2LPZrE7
 cJkpnI0JMa+kI0dhtNcYY9P96hhmdapGlJxjLxhE5/H9GdCfJrMr5166sjwYQCs2Horr
 jr5e3ury5XT2/h7vYIlhJrrZB69gWNeQImaaGxwU0hxXA+sHzJeCwUpDn906hqH5vo2e
 nDB7HwHYzyX3eWFqrqWGTiohn5mwzAJTBxGTExbx71vblIDi2i/sjdOb0TVDXmvE1Cg5
 OxRp1aEbwExGH68QTTK/wlE/WxfGWXU0n2OUQ/dCpX9svAAUltjiKpk6LCnTB4DpkEIc
 8+WA==
X-Gm-Message-State: APjAAAWFi6b0DtBRyLkq9rwSGas3CxQck1vd71njcP0qzGD/aT7p4ph/
 sLvi6nXmaM2J/f79HB9u9gl7EHbbsl18AMjq35U=
X-Google-Smtp-Source: APXvYqzajfNogCiazIdQFJmJhPWwHxWc+Z5wwmTmzYBOWXkIYTk3INMO8TqgM5RbVH5cV1J3m23oX2p+tF/cALTXTXQ=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr363525lfp.44.1562179423948; 
 Wed, 03 Jul 2019 11:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190703005202.7578-1-alistair.francis@wdc.com>
 <mvmk1czh9y6.fsf@suse.de>
In-Reply-To: <mvmk1czh9y6.fsf@suse.de>
From: Alistair Francis <alistair23@gmail.com>
Date: Wed, 3 Jul 2019 11:40:39 -0700
Message-ID: <CAKmqyKPn9GBg=n1j-ZpEdCN4Qfi5qfNtEVgpgF8rYRpof4eNDA@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/2] RISC-V: Handle the siginfo_t offset problem
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_114346_495926_71C30459 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: linux-riscv@lists.infradead.org,
 Alistair Francis <alistair.francis@wdc.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 12:08 AM Andreas Schwab <schwab@suse.de> wrote:
>
> On Jul 02 2019, Alistair Francis <alistair.francis@wdc.com> wrote:
>
> > In the RISC-V 32-bit glibc port [1] the siginfo_t struct in the kernel
> > doesn't line up with the struct in glibc. In glibc world the _sifields
> > union is 8 byte alligned (although I can't figure out why)
>
> Try ptype/o in gdb.

That's a useful tip, I'll be sure to use that next time.

Alistair

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
