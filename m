Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FDB1135D3
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 20:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dnl8sq3/Y6KZEMi16oi7HdkMoIiTgYXzOZkT56rB0us=; b=GozOgjOeWksnZ149CLVaCbsQD
	2vGdLkCA1nc3R9nPgrB4olTBxURW8U56IqqIko0oaIawhlWAahPO9hMTnwysMJv3iW603Fph8OJot
	u/hZEm0H67Xn2mrOwcoDunjDomGZCmr5eSUExWcdnNU85XeloEmxduEC4DfB09yva2kc6zl47zpvi
	eaFxySO3QZw/MPM4MGCW/MnkLj2zbznyGe0hnVD2S++64c7orOIiZJ/IY736qZEnIAHDsf91eTlL3
	T/gxWKt+LEtffg2UrJ3OUcTQW9tICxrC1nk/za0j76+V+haoEdQktqxYgJ8GvPVG8YwXn8oDGXTiI
	UKIJWcYjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icaUB-0001IX-AE; Wed, 04 Dec 2019 19:38:55 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icaU8-0001ID-DM
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 19:38:53 +0000
Received: by mail-io1-xd43.google.com with SMTP id f82so873690ioa.9
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 11:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=dnl8sq3/Y6KZEMi16oi7HdkMoIiTgYXzOZkT56rB0us=;
 b=OTaLNAYiBFoVe8AeZgU3tkYdNoZ3BTso4c3fdw4P/4T4P0n7+SpDqtKDI/Zs2tpQxB
 na89AJmRZQIniUs8k7YAcMzt0QUtO3jy/asn2AX3pIhmgZZ/V0r0dHrA9cL3l9BWSUm8
 8+FsvtA1M3WmSM9k/RFiNrZHqUDZX9nHgaUH/EEVfWl0HIuaD3E7g1YLROvdPBaoDcfP
 2SThcxKOBDjXxnyE88JUKfNwUv9oart/q/YlC27z62EUi28fJtGPJkOjvDOt/5nbkz6k
 JcOhw+vXSHKdjXjkWfVWb4XIN9FkwxPg2vieBbPs3j95WZlM2A6eyYfblv3Q9CHi77lo
 yNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=dnl8sq3/Y6KZEMi16oi7HdkMoIiTgYXzOZkT56rB0us=;
 b=kG9BR467v2fK3Xs27jOTgE4el6R1xi31FpLHA2fXl/1xAdk2VFEb6p9so0tNpI0722
 IgLr/Jd1uYNM+NCmsEW42ZcCP1B5Vww7f8XCMjzWZceMpqlVbfbDYhGZFbrlShXYGKvz
 1bXbJ7ItZoGreu0gHW7ziHJCJnC0p7D5IB50TAnRw7csDPv8EYZAspO4WwhF/+y2ZPgp
 S/LT6FRM0O8ewvNmP+jlPeZYwuCZo0GzL3rZ3hEbUW5Kv/dG4KMjWrGwxEOBTOLk3/z2
 e/8GXxnYXuljK/mSeJxHQl5aP3ys5DhuEQYt4QtVyHbHCjKLPVXoT/WSIbqAwUDxzsPV
 ZYaQ==
X-Gm-Message-State: APjAAAV7Cz52+rCxIlIcSpATWnGu6AjVQr9/SD97ssZ0Hh8GNRxWz2eN
 ZP6HMnV6uECLrfl0IEZgvTov6A==
X-Google-Smtp-Source: APXvYqymOP1UPHAJ1vCK7SiRpUc7QAm62tq6NxqLA7O7BzVqLOB4a/lWy6LZPcmT2tiD42qxSAXAtw==
X-Received: by 2002:a6b:8ec9:: with SMTP id q192mr3230104iod.237.1575488331468; 
 Wed, 04 Dec 2019 11:38:51 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id o83sm2061039ild.13.2019.12.04.11.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:38:50 -0800 (PST)
Date: Wed, 4 Dec 2019 11:38:49 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Alistair Francis <Alistair.Francis@wdc.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
In-Reply-To: <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_113852_577841_67BC83AD 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Alistair, Anup,

On Wed, 4 Dec 2019, Alistair Francis wrote:

> On Wed, 2019-12-04 at 18:22 +0530, Anup Patel wrote:
>
> > I had commented on your patch but my comments are still
> > not addressed.
> > 
> > Various debug options enabled by this patch have performance
> > impact. Instead of enabling these debug options in primary
> > defconfigs, I suggest to have separate debug defconfigs with
> > these options enabled.
> 
> +1
> 
> OE uses the defconfig (as I'm sure other distros do) and slowing down
> users seems like a bad idea.

While I respect your points of view, our defconfigs are oriented towards 
kernel developers.  This is particularly important when right now the only 
RISC-V hardware on the market are test chips.  Our expectation is that 
distros and benchmarkers will create their own Kconfigs for their needs.

Going forward, we'll probably add a few more validation and debug options, 
as Palmer suggested during the patch discussion.


- Paul

