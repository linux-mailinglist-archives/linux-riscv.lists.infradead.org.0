Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E130395711
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 08:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+V4kMs8uDshiYDIR48F5TvrCpi+MbjD4GrkBioeY450=; b=QMfOZTXp06rSra
	cn90uuWtTQpT+yCD2K0A+boqGX4HjHPXuTeuIHNCK6DmmdqKI2e3eowTwdK6f/IJKjsWTcWsUWhvc
	wUDtdUNiDesUhR9zz9G1mdSLEFRiutyUE10GGlGsxaMWquyN0ucTo4iT797cH2CSg/42ddgAXDWiD
	9W/Ic6hXs6hBjHWtq8JmwlpMs5MjpJIQGmrY7sYtVvkVQT0wBFkOlf7ohHCXBzaqDskm6pv797/iV
	i7qDjb7jb0sDdcpJNsucz5qJmxfzU8Y4FQv6xTHPtFqZXH6TuWnx/KcIQOYhNMYoA6TyMFsBXGlHX
	mqD1GU4kuNCxsS7tSqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxFI-0001fQ-49; Tue, 20 Aug 2019 06:03:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxFE-0001ej-2g
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 06:03:49 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so3953047ljl.3
 for <linux-riscv@lists.infradead.org>; Mon, 19 Aug 2019 23:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AEususRD/p1RLs1UC0IHIQOxqNXf3vrCgl3jM8yPylM=;
 b=ZxUq3Kp89/RuJJxAjlEVsnBbqb9KmnuT0R5zHGHBdbrxaNlezCCVDq411Tluue2X3v
 CDV6Ry8uDcWi13dhGFs7qsDEhlLxNNzLxjmtdJWBzT3P4CHbdCRazpwfAOBgotYmutMp
 xwT4O23Hh5DQAh5thGp7AW11u2iB2gD50z1FKawJ1U2Eqr31jQzvlnC4rXrJtvSybPGT
 ovUThUB48Tx5llHOHCvvg4c8ZwTUWrYJqLrzY5lKFawC+QJYoHEt2h5okvRt4Vuz3Llx
 gr9bpAj06ZBXeU96INjnwPzds33RNXp1tjUkx9TRFcASyo67IySLzVipyeXyA8XA+n8o
 vW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AEususRD/p1RLs1UC0IHIQOxqNXf3vrCgl3jM8yPylM=;
 b=IT4a0mZOkwHw/2IV5sAG7zKRUrLTCiMYA+/qm8uDjGFA9YkEOw67nm9W6/6x+Fmp+d
 OMRmYaIazED5nkCJEFuEDTTXZyE9noobavY7k7Ab4eUF9iZwp5oO+gydsO4C4OFHgpwD
 RpDEld59JbrHbT/qCWx2nRyT2MRcAfdH8d+uKnQSFDxFuGtJ0880HTirYtQ5fSd/9niE
 9PL06xyXyOmYkjlrR8IfdvJdRPODci2YQVO6CliqmcyqrmFdYey16YqIJeWK7qJ4H5Fn
 xsMsGvxkfvZAxrCZaggkVk6Uv4MBndCGQdoYWrzZv8msTs8J5mQMcMO10T9b+JFXvxZm
 VncA==
X-Gm-Message-State: APjAAAUMEOOS02J5OS2Ms2OZzWYLMoorhhDKw7p0WZUCydEQpKNsN02R
 pyEKIPDqttJUj5CkQoWHymt8akn3J5XCcHpgYzg4lg==
X-Google-Smtp-Source: APXvYqz1GXfTgzlkZFJTZ7cQNct2UId8Tmq9X/mNPWaQHmPrJUI6MVbVOZbWegp1Us89EVl8iOBnaJ2+PEhtxHG/Tg4=
X-Received: by 2002:a2e:9f0f:: with SMTP id u15mr14579422ljk.54.1566281024086; 
 Mon, 19 Aug 2019 23:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190818082935.14869-1-hch@lst.de> <20190819060904.GA4841@zn.tnic>
 <20190819062619.GA20211@lst.de>
In-Reply-To: <20190819062619.GA20211@lst.de>
From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 20 Aug 2019 11:33:07 +0530
Message-ID: <CAJ2_jOE+JX201biExFRziPTuw3tYFJwsrc5h-Uvg+=fcaobTww@mail.gmail.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_230348_148218_959BC052 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:56 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Aug 19, 2019 at 08:09:04AM +0200, Borislav Petkov wrote:
> > On Sun, Aug 18, 2019 at 10:29:35AM +0200, Christoph Hellwig wrote:
> > > The sifive_l2_cache.c is in no way related to RISC-V architecture
> > > memory management.  It is a little stub driver working around the fact
> > > that the EDAC maintainers prefer their drivers to be structured in a
> > > certain way
> >
> > That changed recently so I guess we can do the per-IP block driver after
> > all, if people would still prefer it.
>
> That would seem like the best idea.  But I don't really know this code
> well enough myself, and I really need to get this code out of the
> forced on RISC-V codebase as some SOCs I'm working with simply don't
> have the memory for it..
>
> So unless someone signs up to do a per-IP block edac drivers instead
> very quickly I'd still like to see something like this go into 5.4
> for now.

As of now, we can pull this patch into 5.4. Later, I will review if
per-IP block edac driver is needed and if so, will take care of
implementing it.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
