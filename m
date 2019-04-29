Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B0FED0C
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 00:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLq90MtsdiraOjiFIxqDOB/6wYFhEYDGUu/stwn8TJs=; b=oa3C37YCvKIypH
	J5JHsj7MDKeE+T74XO5+NXDxxbg2J7uNM1P1UKfzjBuzOQ8GqSRM/dNLe9cwh0/E6kWLOKYaXXQR7
	m3yBpnZV956yjm3u11iBRet0nMwfYeLHWCTkFVmxnPOGXC+90euu7IlQAU1bMxbXxxov456WBMxyP
	Z6EhRlcieHJIOWeKsR8McybiUAKf4T9CNVQZCDX6HrYFYzIeolNAC7F8KAw29zAGfPrk8thXXJ2B0
	4HReYWa1WNGCP9fHMruWpJ/7jjs0SJNBwKRPSzEyL6Q8MhElGIOfNYEfmWKBv3XAwRQTO/IbtLMOH
	k5vDi2mQomLttkTcIc1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFCK-0007t6-PT; Mon, 29 Apr 2019 22:56:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFCH-0007sh-Nq
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 22:56:30 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 573572075E;
 Mon, 29 Apr 2019 22:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556578589;
 bh=yXWHKubp7eGa3UoDVHyla+JGD8NiP4rV2Qe7y1ELTtQ=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=KSmULu9Q7s2Li6tqMGI3QDi8P2Yb4j0jqhxUFeAeWv5fd1lzmlbm10LuPa9rYJFru
 CBkHSqzpA8UlNdzuLasLUPvGb5GS1GpSuqJYaYzD9YqcAGXkWtyKeLt/+gNRd8yjSG
 SwZ0gj7S0zwXJ/23fKD1uWD8IWFgYQUd2iez/SsM=
MIME-Version: 1.0
In-Reply-To: <20190411082733.3736-3-paul.walmsley@sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <20190411082733.3736-3-paul.walmsley@sifive.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: clk: add documentation for the SiFive
 PRCI driver
To: Paul Walmsley <paul.walmsley@sifive.com>, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Message-ID: <155657858858.168659.15376308496117600451@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 29 Apr 2019 15:56:28 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_155629_794658_2FBF2CED 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Paul Walmsley <paul@pwsan.com>,
 Megan Wachs <megan@sifive.com>, Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-04-11 01:27:34)
> Add DT binding documentation for the Linux driver for the SiFive
> PRCI clock & reset control IP block, as found on the SiFive
> FU540 chip.
> 
> This version includes changes requested by Stephen Boyd
> <sboyd@kernel.org> and Rob Herring <robh@kernel.org>, and
> fixes some errors in the initial version.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---

Applied to clk-next


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
