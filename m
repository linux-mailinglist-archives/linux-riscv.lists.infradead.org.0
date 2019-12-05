Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEC31144E1
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 17:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oi4NxqIcB/sLBs0ZuKTjMv5e03fZL2Q3JzIP+n3fXmY=; b=jNHa6DPjysI1wcASPDyCyu2uK
	5yvHfFlyjl/GxMjVgtn98kFSMB0F0GMYqkfsnir6qDF4PojFaqQmrb+LqaJ7xi2Edr7vOlkTEBtK1
	oI3YwaWOYRXb7GThRgwTQcMbq+8M1Fz+RVkhYkOc8YfDlFAlKCLbPCxAGKiZqQ5aNXyWGxPvJaAnq
	E0sDOKNSSZ5ETWf1wO+8N/V7GMgNzdn/1kv+E8c1cp81Ow7RKViYF6VnU/4ljIoMKVHm2c7Hufs6D
	+U5nzcIa1WPW6ifD1M5xngZe2rLN70Q99XkOuzK5CWsgmyUjgFYG+fjf4d/y6SuvFX+Nbh97X2CKt
	UIFRvnxqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icu4e-0002EB-JC; Thu, 05 Dec 2019 16:33:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icu4a-0002Dp-PW
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 16:33:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so4582429wmc.2
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 08:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oi4NxqIcB/sLBs0ZuKTjMv5e03fZL2Q3JzIP+n3fXmY=;
 b=RA4tiDzg8xnt85vBNiTM8llJjCZOYbDw6eGVTzKAdeDWOme5cGtcTQF98ptJ/nQf6B
 IqTMoOYdJbaoPjFpTlzKfXt+99zF4bXB56j1Gel47AQ0OmhgCkLgla7g8STbsf03EEY4
 HC3GdgIrBYGgJO3gJbeY7VVOiVUGxpXP26EtBosLK0cG2ZN9gTMCLA0FA5HSlYOUFhpM
 0GPL9mfrC1MGj7xQ4ENqoDFeNw6XdhPpz7N2un++jCbjtu1898ymrk6ca/CXSosSYn5g
 uGxzZc3apmIFN65W1szYpl2QhjIuLXISDTxKD1x7YnCyfFq4SkyBsgPaMh9hpCkQC3E0
 3AUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oi4NxqIcB/sLBs0ZuKTjMv5e03fZL2Q3JzIP+n3fXmY=;
 b=O6TvQTKsEb7zB5kk0OzeIvqR2xl/MhSjniKh/OA/TGJS7rxCzMwVfkcQ3ii1mlwSh3
 px4NavBXoUNcao0uKxYs+pZjAlyKf4mQCfj5N0odwgrnpN4JYKKbOuxCrursBaTLCtvu
 j20GMczz8UWa2841ULnCUmXRIMSmMqp/neNJiDEqTkWRhkowqh/vnw7M4FV8FK1fMcme
 xq4pMcUjWzfz0uihQ6J4bFe+Jzv/LOY20fXy/MefffRI1kFBtIXrWSok59LjGi0c4E6E
 68SFBtlmlqh6mMJv8LsSy53gcz5rUkUgfCfwDdJzGIZF1wv6euYljzuZ5rFOsx6z8njV
 LqKw==
X-Gm-Message-State: APjAAAWqzZhSFApUIw8+t0eJA0prHP2VbnoOBfR8vIZgFwLeWRu+0P7h
 sa8JC8QLlHPSREj3beLj74rgHJRYF9fFZu74TNZuKA==
X-Google-Smtp-Source: APXvYqxAnS8Y4PwGJJZsCFD6graed10C1Q8H4y95lmg4TYZGi+8RZTvZjcSKIECPuS9AbZC8TYmezaXOsc3pJ7MT+0I=
X-Received: by 2002:a1c:9602:: with SMTP id y2mr6074952wmd.23.1575563625723;
 Thu, 05 Dec 2019 08:33:45 -0800 (PST)
MIME-Version: 1.0
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Dec 2019 22:03:34 +0530
Message-ID: <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_083348_854104_9748EC04 
X-CRM114-Status: GOOD (  12.19  )
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

On Thu, Dec 5, 2019 at 8:33 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 5 Dec 2019, Anup Patel wrote:
>
> > Various Linux kernel DEBUG options have big performance impact
> > so these should not be enabled in RISC-V normal defconfigs.
> >
> > Instead we should have separate RISC-V debug defconfigs having
> > these DEBUG options enabled. This way Linux RISC-V can build both
> > non-debug and debug kernels separately.
>
> I respect your point of view, but until the RISC-V kernel port is more
> mature, I personally am not planning to merge this patch, for reasons
> discussed in the defconfig patch descriptions and the subsequent pull
> request threads.
>
> I'm sure we'll revisit this in the future to realign with the defconfig
> debug settings for more mature architecture ports - but my guess is that
> we'll probably avoid creating debug_defconfigs, since only S390 does that.

We have a lot of users (Yocto and Buildroot) dependent on the Linux
defconfig. I understand that you need DEBUG options for SiFive internal
use but this does not mean all users dependent on Linux defconfig
should be penalized in-terms of performance.

This is the right time to introduce debug defconfigs so that you can
use it for your SiFive internal use and all users dependent on normal
defconfigs are not penalized in-terms of performance.

If you still don't want debug defconfigs then I recommend reverting
your DEBUG options patch and you can find an alternative way to
enable DEBUG options for SiFive internal use.

Regards,
Anup

