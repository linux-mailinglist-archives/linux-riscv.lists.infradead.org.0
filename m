Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230C317D406
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 15:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atM8LVEBHNH8aBah39/7yMxNKd0pisgzB5r3EHnqWsw=; b=ORhE0V9EOGrn5z
	bTKWcYUWiLaeE0GIL06IuzzBJS2XyAiZmBgjlk9KIdRmkF+tlrcD3w/Uegpl6J/I3wgF4rn3uFN5g
	vj7NJk4YaBe1igb3ARccLonrGUY2bS2njRV+UQTy21jhEAv6OXE6qrMH9tUe3rgV7JobhRbMbmK1a
	mj0nUyWfp2cm0rzveVtegAu7YY0TxFMyMpXFrqxP2zFJdMMQsQBe1rWp+0/5uU4oNE2CDNdBgRCCI
	nqWK9z4l6Ai2zetoYZ2a7/aOsiTBsuNjn8uZGDLoSOYunCwdKc4YS6I46qM1mkmVr/OqoFACOE9FW
	JbUKq4L7m4CbijTi2YWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAwTP-0001UJ-8e; Sun, 08 Mar 2020 14:00:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAwSv-00013N-Nk
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 13:59:39 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6ED2B206D7;
 Sun,  8 Mar 2020 13:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583675975;
 bh=0i5E1+7qOjaVYmSole07kk9HeR7FiaaKRB5ktGbe5Yg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BXqNv88mZHtri4Ucddv3jFGd4GBjlGH80ugf1qToiHrGx+fqNeeXR3WK3AcnuJhJg
 FlOkPEEUt7qjSOBlo+VLTAlja1dXtIA2hAtdH3k13gJerWGaWfYNYOtJbFN7nqZcoG
 yU10gC12p7X9We8Y61AmHLmd3K16OrJZ8M6S7ft4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jAwSr-00B2jV-Jn; Sun, 08 Mar 2020 13:59:33 +0000
Date: Sun, 8 Mar 2020 13:59:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 1/2] irqchip/sifive-plic: Enable/Disable external
 interrupts upon cpu online/offline
Message-ID: <20200308135931.331f9be4@why>
In-Reply-To: <20200302231146.15530-2-atish.patra@wdc.com>
References: <20200302231146.15530-1-atish.patra@wdc.com>
 <20200302231146.15530-2-atish.patra@wdc.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: atish.patra@wdc.com, linux-kernel@vger.kernel.org,
 anup@brainfault.org, aou@eecs.berkeley.edu, anju@linux.vnet.ibm.com,
 anup.patel@wdc.com, bp@suse.de, ebiederm@xmission.com, james.morse@arm.com,
 jason@lakedaemon.net, linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, rafael.j.wysocki@intel.com, steven.price@arm.com,
 tglx@linutronix.de, ulf.hansson@linaro.org, vincent.chen@sifive.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_065938_085591_63CFEB3B 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Anju T Sudhakar <anju@linux.vnet.ibm.com>, James Morse <james.morse@arm.com>,
 "Eric W.
 Biederman" <ebiederm@xmission.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon,  2 Mar 2020 15:11:45 -0800
Atish Patra <atish.patra@wdc.com> wrote:

> Currently, PLIC threshold is only initialized once in the beginning.
> However, threshold can be set to disabled if a CPU is marked offline with
> CPU hotplug feature. This will not allow to change the irq affinity to a
> CPU that just came online.
> 
> Add PLIC specific CPU hotplug callbacks and enable the threshold when a CPU
> comes online. Take this opportunity to move the external interrupt enable
> code from trap init to PLIC driver as well. On cpu offline path, the driver
> performs the exact opposite operations i.e. disable the interrupt and
> the threshold.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Both patches queued for 5.7 (please add a cover letter when sending a
patch series).

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

