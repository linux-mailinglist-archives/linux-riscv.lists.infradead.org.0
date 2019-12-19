Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311D61262BD
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Dec 2019 13:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZtGGKEXPSlNk1o+fnDsc3hmGz4jCQ65wpZwpAym/QLU=; b=nN390txpnq+yZaThvhSlNoIYK
	vF69u24iX0qRn05vG6BA9LtKV0jOpXTsToU8K6cq8tOLtWuZmsiq7kG1YpMDiVkQmZl+MtqBIS3X1
	aBFJO0QtZev7H5d5RiBzI1vNTsyEbEbfysBD8SSDlqvmdZmvKZ1Oz8c1iN9ebfldC5BOjMGRfWGR1
	ZeFiqXc2DBVVah4qyfB6Sc8TXT6JFHJJr2ZDBmwd6VCvM38ndv0MtVRujyadTnAoSEBqZnTTCbB01
	BBWjDoDj0iT0G3oKjTypjwfHOGLMRFnQbUOVXdxEnsVRaL/NTs7fxAhcJMJlMusUoLIzu+E5KKBrh
	KonkHm9uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvMA-0003WE-3U; Thu, 19 Dec 2019 12:56:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvM6-0003Vi-Pa
 for linux-riscv@lists.infradead.org; Thu, 19 Dec 2019 12:56:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id f4so6977570wmj.1
 for <linux-riscv@lists.infradead.org>; Thu, 19 Dec 2019 04:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZtGGKEXPSlNk1o+fnDsc3hmGz4jCQ65wpZwpAym/QLU=;
 b=vdsHpBuYZOpTpf0myyOzxoD+/7WkUsddZ9fvWNoLJIPq9TswHWSEjqV1XWWRLHMoZy
 uCrbX8X6nZ9BPhzPmJnS6w2lcftYQzsKSMXPi1cwtHHj9ECNLvfEF4TTUDDb3czrkuS9
 I1PPxB6jzeGBEBoEo14GUAD60GGgsZ72zvgP0+dAtugowVwK1N3bcSFAcJ2NKA54Egy9
 NFUcg53AMdgyc3KRvAMuOaSFEA5/2UZ61alDMvQ75dq+GOzbhXFAqGbG4/MFMdm0VezX
 40y+qW4/PdgP20Erh0Vz1fC6BPP4OMW2ru8yk3blcd/UoI/68q/TpX2y+ZPe34OPAytF
 Vnwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZtGGKEXPSlNk1o+fnDsc3hmGz4jCQ65wpZwpAym/QLU=;
 b=e1tCAftvr14Pn3DEAl8sVP9sCqP94E2mWJbqYeRBVQLVaNTjRuzRl8c8kV3JgqJrLM
 wiY0e+T9OtwVE0dQTsK9DlwPaq/Ts5H7kmmJFGokK1mN4iQ5/NbOSTtwJRYyl0ky60AE
 vc3TS1zTtss7G4oV7KTam3ZCp1dNgo5F3/DPpNuF0E6iGCP5geul+MChIQjfjvD3dnG+
 4J9t00h5794cEtEqRztS+9NGzE5EoAeYZKtDjCT8oVKsIgpzSOTtKNmfUAp/Vitxj3+/
 os+8zBKdIs3qSJLLoZfhcgmfh9Yr30T+XR9YQ7JMiC2qPwFCidZWl3FfoADjfPu6drJa
 Arjw==
X-Gm-Message-State: APjAAAVsuL53QEm/nsLKqISZv1Kt9r0wod+EITvV0UKKG3dwuLnq9K5C
 ZyqW5eP7uA4DXislrtx9IAvQxIlGp94hwfQjBDCr9lLu
X-Google-Smtp-Source: APXvYqy1iJOq0aQFnxbbh6I9+LJvG4N4Og/ncl8ONjm/gvkkFKUkUe1V2SvVS4m/a2p9f++c6m8xqHLxSqbGGX83esE=
X-Received: by 2002:a1c:22c6:: with SMTP id i189mr10515420wmi.15.1576760197329; 
 Thu, 19 Dec 2019 04:56:37 -0800 (PST)
MIME-Version: 1.0
References: <CAEn-LTqw=r7WotzzHJZou10O5mcCDs+TK_ep4hhyBbUnHMGMAg@mail.gmail.com>
In-Reply-To: <CAEn-LTqw=r7WotzzHJZou10O5mcCDs+TK_ep4hhyBbUnHMGMAg@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 19 Dec 2019 14:56:01 +0200
Message-ID: <CAEn-LTq-SQXK4EO2itu_CcyqKjM8FReHqA1WjcHkZWJO2xP5Mg@mail.gmail.com>
Subject: Re: Compiling 5.5-rc2: warning: "IRQ_TIMER" redefined
To: linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_045638_833778_0230389E 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 2:46 PM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> Hi,
>
> While compiling modules for 5.5-rc2 in Fedora/RISCV I see compilation
> warning. Similar was reported 10 days ago by kbuild test robot [0].
> That points to a4c3733d32a72f11dee86d0731d7565aa6ebe22d ("riscv:
> abstract out CSR names for supervisor vs machine mode").  The commit
> added
>
> [..]
> #ifdef CONFIG_RISCV_M_MODE
> [..]
> #else /* CONFIG_RISCV_M_MODE */
> [..]
> # define IRQ_TIMER IRQ_S_TIMER
> [..]
> #endif /* CONFIG_RISCV_M_MODE */
>
> There seems to be a few drivers that define IRQ_TIMER:
>
> sound/pci/au88x0/au88x0.h
> sound/pci/azt3328.h
> drivers/net/fddi/skfp/h/skfbi.h
> drivers/char/pcmcia/synclink_cs.c
>
> Should we pick something different than IRQ_TIMER to avoid this clash?

Sorry for the email. I just noticed that a patch was proposed
yesterday to fix it:

https://patchwork.kernel.org/patch/11301459/

david

