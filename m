Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCDD29DFA
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 20:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmC7Z7LgsoUTNirNA71cqxO6cJvd0L85VTgbSSS2/wc=; b=LWb59iowLp6tsh
	nu0jd9OPjQSDl+fqUyFQF68kAJfOq0n6u4VjzzbgOjmYHMrn8p33tj3vWBVQ39wwt5eN/6axmMGr+
	M3BdsDRlVNs+gX7DLV8IGVt3EewpiTTXWCxU7ahiOcRpXqn8ch6EUX55d1kxHGncDICefvyRISQg4
	aRKIpn5x8I97mxh4aV0TrRvAsrCSnwJBXgaSYi0onqoRdShoLWjuSLIZGHvTPPql5vD3XWqmCVhnf
	OnDihO4B+N0F2NUyDmK2UoKnOdYhLVavrSzUjDlQ6Pmlp+JEcQNJV0maI0Q8sOOteBEpgCI3V6/gg
	K8zy/O6/O3Pa4sZpKVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEqe-00066S-De; Fri, 24 May 2019 18:23:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEqb-000663-B1
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 18:23:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id z1so4009581ljb.3
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 11:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oAc6Cgv594OhUQ5xZ567W3Z4uEaDcOayJHPAa+3VzMI=;
 b=GGcXZoxjzkehn3dgO3w8ogpwMfmQ+TxdHgSFTgpAwmJC9UqtRHKkqdwYipllUpihHV
 FuyRCbXgxpcsbViqSFXNdu/G0IOecHjFY5+xaUWF+sjb6CBiARXTJzUwNGmTxjSfhaqy
 zygfYzCSCMq2oGbu1s2fmbuBksrNKDyN86uE1QpDVTw3ElQYnzBiGp86GI5TtcJCZ1HX
 Lq11H3WCLN9KQTWOhrSt4JzR11m2UWyx9mjWE+zDUUFBO7p5C2eEdGdFxrJdyh8AzsYO
 CZizm7gLFLDUy1ypPehu4SlidNoF4CtxxvDI5Z4NAdiCl5VqzV9VFuaXHubEBIGYIL8S
 h33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oAc6Cgv594OhUQ5xZ567W3Z4uEaDcOayJHPAa+3VzMI=;
 b=IAhGqsmA/SHnx9ZJ3RGSLR8VbwwJnmRsPwi6NtGTx9+v6TSDZJgNco3QRQUHDK/RBp
 ds8rhi8VoW6+UQLsg3EbHfi/XcsE5D9mJ5YioapexhsUPKIh76MkTqxtDwjeOaVHOq0J
 Iz68abPaXOGcfybKHvou1ChvXwx5K4BwjIwn9z+gGGGn2p9eqgsb5fIVGdzcrjt9VaJj
 2MEOfsBFUgLxdZKulRXuOPwDDBAKm70P7u1Fy8eed+U7P4VN3FVpWv3/HK9PGUtAVvvS
 3ixXqwvrczNlAi72lq5CAwYvg/E57ydHUQxeTfGn1Diut9LxWxxH6Hv6wvpCtFn+Vlmy
 vyKA==
X-Gm-Message-State: APjAAAV1dmlrt3QdnjxAH7pMSBNOdwjBM89anhedXSvpsFl3yBIre0KV
 t6x0BO4U9e5xfHdzGXNR1U/04+xgFMfW5THVobOMtg==
X-Google-Smtp-Source: APXvYqziCYJtd2CA8XOj3JJxV7DSisIHgoEAFKLjLloSz2i/45Ak4ed12RDSUensepvBcWyBf9ys5tQjqljSS5S9c5o=
X-Received: by 2002:a2e:80d5:: with SMTP id r21mr1085604ljg.43.1558722195406; 
 Fri, 24 May 2019 11:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
 <20190524063809.GA25866@infradead.org>
In-Reply-To: <20190524063809.GA25866@infradead.org>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Fri, 24 May 2019 11:23:04 -0700
Message-ID: <CABEDWGxUDkNOcpT1K+Ez2i47TKi8bHRn-32NaVNkCQgkbPbvmw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_112317_622268_EE553EEA 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Chrisoph,

These changes were implemented in Linux PCI Endpoint framework to
exercise PCIe endpoint mode on RISCV.

Alan


On Thu, May 23, 2019 at 11:38 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> [trimming recipient list]
>
>
> How is this related to arch/riscv?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
