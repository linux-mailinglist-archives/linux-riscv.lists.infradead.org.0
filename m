Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A784A20FA3
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 22:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCy63dUI5RdnSmGhf13KFErb7OWKWDQbPn8mZDOtJzw=; b=dt/zZm/3TUh2ok
	6IbdTAnBTaNWD+c1KEHpMtk/YQ8ASjCF1Y5YGmvtmqfL/t3NRwMhCuNWAlZBM73Vba8PuNTEAgS/w
	oQ4ogyTAJbGVeceOC6vXNCpCe5z+YWFyvOdtjyFdGST/iyMBQYxsjgnWAW3NIO6dRmtMcAEWlt7i4
	XVzG2e6Py+vLM7YieF2DEXz/HUdkm1eJa0yj2D53nA6lRZuPpMDuptcNYmryqC+tn8tW0hzlqh/fm
	6MIqqa5iLxXP7S33EbnX7XDexzPd4gBJQ9qaFEv1My8r7CityzjHEdnbx0vWQTifflZuI9O0y2Z1K
	6CcTsdFsftfYlz3jGwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRN52-0004vk-Cy; Thu, 16 May 2019 20:34:20 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRN4z-0004v2-3k
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 20:34:18 +0000
Received: by mail-qk1-f196.google.com with SMTP id z128so3156348qkb.6
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 13:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXMvY0G3v5gUX7EQ/Z5aIWKjEPl/AGLnGBSf3p0o4lk=;
 b=kTKGRMckqNE55hhJhL/PzLr4s25zToM23h6D6LHdihJ89h6rZpKUKQ9ulYA3iTjiBJ
 hKiYdG6PDv8rgFkpIsetSn1xTAiFSaBykBBkUGPp0xejEQ946Qa3+bWRu01MNNqRd4jd
 NQyaNqy/CImqkDdg+v7VlBSgj28wwG/rfe6xr7mbKweT2LDWBV9IyO9GHGu0hrFK69qv
 gNQI8lDlNrMBrpf24MAkjhHktPuVGwlzvARRrVTZFye6iAFQ8TBLSQuqVqTaZLsTu5Mp
 A81soQXG+dPvfcw/d/YnL3E3NvYiyahJ6a1osFyCJ0kTLjXieeIRbOUhWk/mL3u9Iyn3
 m8cw==
X-Gm-Message-State: APjAAAXsX5jBOFPQ67Mjdn7BLeCaDKxNO563F5F7CCZQ3SlAd7tAXJLB
 5FOUpLh/5dIiqppN2Cg8wWzARFIS8zZ31ETOhCg=
X-Google-Smtp-Source: APXvYqx5ALmLhbiFLrZNEF380YSU8dgyGgV6muKZ0e/Ile/gyuU/mTdYBq4bG+k48BHmwY1zD4KIAbHFI2B/tDE+FRM=
X-Received: by 2002:a37:3ce:: with SMTP id 197mr40456259qkd.14.1558038855738; 
 Thu, 16 May 2019 13:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
 <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
In-Reply-To: <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 May 2019 22:33:59 +0200
Message-ID: <CAK8P3a2EEuxh3uhsqauEC_vROZ7tQHhFwxgiLUnrgtpMdb3kuA@mail.gmail.com>
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_133417_169635_762C62AF 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 8:41 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, May 16, 2019 at 5:09 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.git
> > tags/asm-generic-nommu
>
> Interesting. I haven't seen this error before:
>
>   # gpg: Signature made Tue 23 Apr 2019 12:54:49 PM PDT
>   # gpg:                using RSA key 60AB47FFC9095227
>   # gpg: bad data signature from key 60AB47FFC9095227: Wrong key usage
> (0x00, 0x4)
>   # gpg: Can't check signature: Wrong key usage
>
> I think it means that you signed it with a key that was marked for
> encryption only or something like that.
>
> But gpg being the wonderful self-explanatory great UX that it is, I
> have no effin clue what it really means.

Same here.

> Looking at the git history, it turns out this has happened a before
> from you, and in fact goes back to pull requests from 2012.
>
> Either I just didn't notice - which sounds unlikely for something that
> has been going on for 7+ years - or the actual check and error is new
> to gpg, and I only notice it this merge window because I've upgraded
> to F30.

I have reconfigured it locally now and pushed an identical tag with a
new signature. Can you see if that gives you the same warning if you
try to pull that?

      Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
