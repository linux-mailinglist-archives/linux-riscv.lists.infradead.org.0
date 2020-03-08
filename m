Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36317D439
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 15:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T39gAXhmzlW9oJlKFxNoThuXkCX2cqZLtw5fM1yB7V4=; b=VPWL3QaesXHLa4
	LZBzxbq5HhGI9MBKx1mH+A7dBrj1uRcEtLNRWDw1gJggdfN+1jIageUojHgHWPPxMjTlGmqxx7mdO
	vNMQWqDV2s9Kb+nr6wCXtjBXQp89NBZWpDGINPiSiDcrWAI1Jsfl6YsLboujqvfvt2dK9mXqhFfhP
	sYvWu5i0gkTt8u+vVRMhma2hW9f20DmrLKXxMlZB+uZ+Ciw1Toi9v0H1PLCTShmX8C2UwnrzhZJto
	y/iE3oxtdedFQ+slYvs7GrmyBCvPBOPSTPqu3/8alqG1mhPf1XzWng3BII95p7dNc7UKitR8X7xMw
	HZEX4EwhgIaHd4z5Ufbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAx5H-0006mV-At; Sun, 08 Mar 2020 14:39:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAx5D-0006m8-SV
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 14:39:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C2C0206D7;
 Sun,  8 Mar 2020 14:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583678351;
 bh=AMd0h0/qwrlKb60N+y/bZccBrEPrwM6M0GofBq5BRyU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iJfYi7Es7/Rk36TmElQNtAtib6Gk+L5JPtAMRh5ULtEF68pz2E3sehoE/h0BApUbK
 6jM8jMfUExCvJvhos19Fpgg4vUgjIcink8jVBn2APpB4LWyKcrLmMtvCxY/dqij0FN
 OZE4vjEBAT6ZyNPmBcBADNW0NjB1vh6c9/NWElAw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jAx5B-00B39e-K4; Sun, 08 Mar 2020 14:39:09 +0000
Date: Sun, 8 Mar 2020 14:39:07 +0000
From: Marc Zyngier <maz@kernel.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 1/2] irqchip/sifive-plic: Enable/Disable external
 interrupts upon cpu online/offline
Message-ID: <20200308143907.51f8eddc@why>
In-Reply-To: <20200308135931.331f9be4@why>
References: <20200302231146.15530-1-atish.patra@wdc.com>
 <20200302231146.15530-2-atish.patra@wdc.com>
 <20200308135931.331f9be4@why>
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
X-CRM114-CacheID: sfid-20200308_073911_938133_D663E111 
X-CRM114-Status: GOOD (  13.61  )
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

On Sun, 8 Mar 2020 13:59:31 +0000
Marc Zyngier <maz@kernel.org> wrote:

> On Mon,  2 Mar 2020 15:11:45 -0800
> Atish Patra <atish.patra@wdc.com> wrote:
> 
> > Currently, PLIC threshold is only initialized once in the beginning.
> > However, threshold can be set to disabled if a CPU is marked offline with
> > CPU hotplug feature. This will not allow to change the irq affinity to a
> > CPU that just came online.
> > 
> > Add PLIC specific CPU hotplug callbacks and enable the threshold when a CPU
> > comes online. Take this opportunity to move the external interrupt enable
> > code from trap init to PLIC driver as well. On cpu offline path, the driver
> > performs the exact opposite operations i.e. disable the interrupt and
> > the threshold.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>  
> 
> Both patches queued for 5.7 (please add a cover letter when sending a
> patch series).

Apologies, there was a cover letter. I just messed my filters... ;-)

	M.
-- 
Jazz is not dead. It just smells funny...

