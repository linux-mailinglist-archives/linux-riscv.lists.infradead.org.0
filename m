Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E8411627
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 11:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxPG8a6AgMtVjBJNVjhK4Wn30FOHzgX5xHz86LhkWc0=; b=ZE/Nhv+yopRTje
	NItekkUfj6RTAEvUO04W4FH2EDs0fDB79D9aT6M9hcgJv8gz5VcxqENJ0tmizSppmA80kHqFuhESr
	qsuVyImxrdWproMwI5jd2BnjELfBi4DRZiyJBXX48Sl6AZ0yiVonRqwqAcztkM0jNPyVoDdmXzMLU
	GbAowahDO/pwTfBBja00m/xs+dCGUtuVBX/gmi0iITaprZsFYKhfuJqpqUdK2AvV3RpChxsRyxuc0
	xlTOxIdPdP2GSKwLCaj+5CfJtf14FL23LPIK10h7tizk0cgLUf1FwwhO6x63U+4RWUYzOqQPWQ07Z
	cwazm4wgRCXP0kSr7NFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7jz-0001s4-KU; Thu, 02 May 2019 09:10:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7jt-0001ja-GX
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 09:10:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D42CB374;
 Thu,  2 May 2019 02:10:48 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00C993F5AF;
 Thu,  2 May 2019 02:10:46 -0700 (PDT)
Date: Thu, 2 May 2019 10:10:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
Message-ID: <20190502091044.GD12498@e107155-lin>
References: <1556171696-7741-1-git-send-email-yash.shah@sifive.com>
 <1556171696-7741-2-git-send-email-yash.shah@sifive.com>
 <20190425101318.GA8469@e107155-lin>
 <CAJ2_jOEBqBnorz9PcQp72Jjju9RX_P8mU=Gq+0xCCcWsBiJksw@mail.gmail.com>
 <20190426093358.GA28309@e107155-lin>
 <CAJ2_jOEoD=Njp+L+H=jG59mA-j9SnwzyNmz7ECogWmbvei_f5Q@mail.gmail.com>
 <20190502004130.GA20802@bogus>
 <CAJ2_jOETZa_oC-xSwfQVw-9Q6OivRG2R0rKMhwCk1knbxWJQVw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2_jOETZa_oC-xSwfQVw-9Q6OivRG2R0rKMhwCk1knbxWJQVw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_021049_862655_46E150DB 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 10:50:12AM +0530, Yash Shah wrote:
> On Thu, May 2, 2019 at 6:11 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Apr 30, 2019 at 09:50:45AM +0530, Yash Shah wrote:
> > > On Fri, Apr 26, 2019 at 3:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Fri, Apr 26, 2019 at 11:20:17AM +0530, Yash Shah wrote:
> > > > > On Thu, Apr 25, 2019 at 3:43 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > > >
> > > > > > On Thu, Apr 25, 2019 at 11:24:55AM +0530, Yash Shah wrote:
> > > > > > > Add device tree bindings for SiFive FU540 L2 cache controller driver
> > > > > > >
> > > > > > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > > > > > > ---
> > > > > > >  .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 53 ++++++++++++++++++++++
> > > > > > >  1 file changed, 53 insertions(+)
> > > > > > >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > > > >
> > > > > > > diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > > > > new file mode 100644
> > > > > > > index 0000000..15132e2
> > > > > > > --- /dev/null
> > > > > > > +++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > > > > @@ -0,0 +1,53 @@
> > > > > > > +SiFive L2 Cache Controller
> > > > > > > +--------------------------
> > > > > > > +The SiFive Level 2 Cache Controller is used to provide access to fast copies
> > > > > > > +of memory for masters in a Core Complex. The Level 2 Cache Controller also
> > > > > > > +acts as directory-based coherency manager.
> > > > > > > +
> > > > > > > +Required Properties:
> > > > > > > +--------------------
> > > > > > > +- compatible: Should be "sifive,fu540-c000-ccache"
> > > > > > > +
> > > > > > > +- cache-block-size: Specifies the block size in bytes of the cache
> > > > > > > +
> > > > > > > +- cache-level: Should be set to 2 for a level 2 cache
> > > > > > > +
> > > > > > > +- cache-sets: Specifies the number of associativity sets of the cache
> > > > > > > +
> > > > > > > +- cache-size: Specifies the size in bytes of the cache
> > > > > > > +
> > > > > > > +- cache-unified: Specifies the cache is a unified cache
> > > > > > > +
> > > > > > > +- interrupt-parent: Must be core interrupt controller
> > > > > > > +
> > > > > > > +- interrupts: Must contain 3 entries (DirError, DataError and DataFail signals)
> > > > > > > +
> > > > > > > +- reg: Physical base address and size of L2 cache controller registers map
> > > > > > > +
> > > > > > > +- reg-names: Should be "control"
> > > > > > > +
> > > > > >
> > > > > > It would be good if you mark the properties that are present in DT
> > > > > > specification and those that are added for sifive,fu540-c000-ccache
> > > > >
> > > > > I believe there isn't any property which is added explicitly for
> > > > > sifive,fu540-c000-ccache.
> > > > >
> > > >
> > > > reg and interrupts are generally optional for normal cache and may be
> > > > required for cache controller like this. DT specification[1] covers
> > > > only caches and not cache controllers.
> > >
> > > Are you suggesting something like this:
> > >
> > > Required Properties:
> > > --------------------
> > > Standard Properties:
> >
> > I don't think we need this separation.
>
> Ok. Won't include this "Standard/Non-standard properties" separation
> in the next revision of this patch.
>

Sorry if I created confusion. I just wanted a note saying all the properties
in ePAPR/DeviceTree specification applies for this platform. That would
help me check if the standard cacheinfo infrastruction works as is or not.

--
Regards,
Sudeep

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
