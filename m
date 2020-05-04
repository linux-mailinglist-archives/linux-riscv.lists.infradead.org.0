Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C70C1C3D7A
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 16:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ffqLare+QK82kt/CgJwDH2hQlLO26l46McQ2eJkr0+I=; b=Wvsx772KdeqVqsJ6ygz2YxUvO
	lgRuaMMMWjg9/8Z3jpr38Rze+2NGSbX3QAK6iWI05k6VrMI1DkKLTLW2A2BhlQcht4SZceGJlPEPA
	E6UP4+FRdyCEIfz4huKR/KVLGwCT7En9XaeNTGyla3JTZSySXT8ItSN54bL4jlpmmfx42FCvhXR58
	zWqEozxfZH+o44PgkZ1sio6ganoJ9IUzQRWBzII9TUOkrM7lh3aVvrue0luauVt4SmXapqE/rJDak
	Vuuugv2Jm9KH9u2p9VM4zkf0k5P7c6YGoTdT5K92DWz48X0PODKjSQkUhRQB+DNSg94+gB4cEb77J
	SZuTs9YjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcON-0003R8-D2; Mon, 04 May 2020 14:48:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcOJ-0003QT-Ki
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 14:48:21 +0000
Received: by mail-lj1-x243.google.com with SMTP id w20so9984186ljj.0
 for <linux-riscv@lists.infradead.org>; Mon, 04 May 2020 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ffqLare+QK82kt/CgJwDH2hQlLO26l46McQ2eJkr0+I=;
 b=a7tLwCHOElucTh3swlXUVUCJk0yzfZ9zxMrHPh7XBkFawqiqzvkkItmVYwMKDrQsy7
 m/7iymW1sEZvnc+5sbO70pWNEh+fCO9aRRi2Ld8M4/pCimEy31RCUrahCXAdCtiX85Gm
 m016cx5Gr4aJ1gWnuSreZUydoiY1rSPzejtWTquzN+EyF6dbmByzQLZLPBFCXd0Wnp2u
 lLlvRu84XU+p2hdrIXlWiWNPoifl3GawO7Y4tIOP7JhoyfWqgWvdZHEFDoMHFm0rU39t
 MS3I5rUjqp6m+4S3uh4cbVGOTD6SyIOirhdz2H/aKv0Zzxh3phsJSvvWoVcHMybQJkvi
 10jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ffqLare+QK82kt/CgJwDH2hQlLO26l46McQ2eJkr0+I=;
 b=pouidfSUalK1xSppNMiDSf0EJHjlFH5dq6EE3KjrG2CULFg34FbgGtIwja2SowYc3X
 7hP1Z9WXIYW3Xt8aGsey3hns9PW5HQ8C3Q/nHmzIeJ/HZQvVQjEcJJ383ekZu/BUD/ln
 +C0PLZFq8zyKyHTui69DhifRAIe1G4yXiKl3/SDBAbG5pFpWgycVYTkyV7EZetiL080l
 /UQeTJ8A2kQKxdg92qmh9PvP3+8wqf5p5toDggVxuuWPv/3Rwt4nZN5GGidgJcXFAIPl
 vl6w9wUQT+MSgxTTSuaaqnArK+al/TwX/pul3zMW+NwangtRapvaZ9lh1fuBb9kvkmpr
 J6mg==
X-Gm-Message-State: AGi0PuYuID/8quEeH+ZNBR2yVOfyqXC5hg9fVJAmXmNLCCt+1qKAGH3d
 iztNS9bE16MxBNAOZ+NzUBEW6Mc/0Iygpx0xzQo=
X-Google-Smtp-Source: APiQypIbHZT0KFM1Bhq6mVi3kdT2/iHBi+hiInRZ/PSvxDQKn5RuQcPl1aUlgs0Ld1JTGjKQRuF7jbj4wfuV/sk3gSw=
X-Received: by 2002:a2e:9dcd:: with SMTP id x13mr10001722ljj.120.1588603696988; 
 Mon, 04 May 2020 07:48:16 -0700 (PDT)
MIME-Version: 1.0
References: <mvmh7wwq6nb.fsf@suse.de>
In-Reply-To: <mvmh7wwq6nb.fsf@suse.de>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Mon, 4 May 2020 17:47:40 +0300
Message-ID: <CAEn-LTp1e0oggUkDaDH6KrdrpHhPzEHv60inE4jRusKA4CTB6Q@mail.gmail.com>
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
To: Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_074819_673754_49202D0D 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 2:30 PM Andreas Schwab <schwab@suse.de> wrote:
>
> When enabling CONFIG_SLAB_FREELIST_RANDOM, the kernel frequently crashes
> pretty early:
>
> [    0.165922] Unable to handle kernel paging request at virtual address 00000016e1694827
> [    0.173081] Oops [#1]
> [    0.175308] Modules linked in:
> [    0.178353] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.6-212-default #1 openSUSE Tumbleweed (unreleased)
> [    0.188074] epc: ffffffe00016f40a ra : ffffffe00016f44c sp : ffffffe1f6ae9c90
> [    0.195193]  gp : ffffffe0009ae600 tp : ffffffe1f6ae3480 t0 : ffffffe1f6c19c80
> [    0.202398]  t1 : 0000000000000000 t2 : 000000000000f8b7 s0 : ffffffe1f6ae9cd0
> [    0.209605]  s1 : ffffffe1f6a036c0 a0 : 0000000000000000 a1 : 00000000000002e1
> [    0.216811]  a2 : ffffffe000a08c18 a3 : 7fda5816e1694827 a4 : 00000001f7d06000
> [    0.224017]  a5 : 00000001f7d06000 a6 : ffffffe1f6c19c00 a7 : 0000000000ff0000
> [    0.231224]  s2 : 0000000000000cc0 s3 : ffffffe00043262a s4 : 7fda5816e1694827
> [    0.238429]  s5 : ffffffe1f6a1a800 s6 : 0000000000000000 s7 : 0000000000000038
> [    0.245636]  s8 : ffffffe00018a674 s9 : ffffffe00018ab60 s10: ffffffe1f6c19c00
> [    0.252842]  s11: 000000000000000a t3 : ff633e17173e647f t4 : 000000f600000000
> [    0.260047]  t5 : 000000ff00000000 t6 : ffffffe1f6c34258
> [    0.265344] status: 0000000200000120 badaddr: 00000016e1694827 cause: 000000000000000d
> [    0.273289] ---[ end trace 703a116d0e920a95 ]---
>
> I think that means there is a use-after-free somewhere.

I completely forgot about it, but I had the same issue on Fedora/RISCV
side. With it enabled (which is typically the default) Fedora/RISCV
fails to boot with the same the same or similar messages produced on
console output.

I believe the kernel at a time was v5.4.2.

It seems that on Fedora/RISCV side I disabled it ~4 months ago.

david

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."
>

