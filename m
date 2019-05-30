Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563EC3001C
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 18:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srA1pRIkGayaigVZMEn8L3PWJVUIQLu7m2gGDrFDT3g=; b=RSef+gMd87F13h
	jWKp00BQj9sXlLAU1KiU8hN3lxmEnEjcDORdZEGmEBRnZouIlHY0dBSuK0FGFNpZy1oc79+jWKWg1
	FwGV6NEdDgl613s+j1k1fnYMyUV+bPKxJgDOx6kdvceuHFHuEu98frBklv1EV2eSYz+ydgkbqysq8
	20buUhAalh0bq9FLqcfr/1hJsq6DxqgyzjvfrqA+Q30JnBmdplUcjsTOgXPU/1wdVoD0v43+hLX2l
	j3G+K0Xeg4gAtEm09xV4bixvLnPKLeJS3zyAxUhq+G75yBiJK8EYo1VXEJaAemf2DMZdQDoipQ6hA
	T8xkSSeKkF+LzFH0+9ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNp4-0003rj-Hz; Thu, 30 May 2019 16:22:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNp1-0003qm-2s
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 16:22:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13CAF341;
 Thu, 30 May 2019 09:22:28 -0700 (PDT)
Received: from redmoon (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23AA43F5AF;
 Thu, 30 May 2019 09:22:26 -0700 (PDT)
Date: Thu, 30 May 2019 17:22:23 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2] PCI: endpoint: Skip odd BAR when skipping 64bit BAR
Message-ID: <20190530162223.GG13993@redmoon>
References: <1558648540-14239-1-git-send-email-alan.mikhak@sifive.com>
 <CABEDWGzHkt4p_byEihOAs9g97t450h9-Z0Qu2b2-O1pxCNPX+A@mail.gmail.com>
 <baa68439-f703-a453-34a2-24387bb9112d@ti.com>
 <CABEDWGyJpfX=DzBgXAGwu29rEwmY3s_P9QPC0eJOJ3KBysRWtA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABEDWGyJpfX=DzBgXAGwu29rEwmY3s_P9QPC0eJOJ3KBysRWtA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_092231_139587_BFF35347 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-riscv@lists.infradead.org, gustavo.pimentel@synopsys.com,
 wen.yang99@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:50:41AM -0700, Alan Mikhak wrote:
> Hi Kishon,
> 
> Yes. This change is still applicable even when the platform specifies
> that it only supports 64-bit BARs by setting the bar_fixed_64bit
> member of epc_features.
> 
> The issue being fixed is this: If the 'continue' statement is executed
> within the loop, the loop index 'bar' needs to advanced by two, not
> one, when the BAR is 64-bit. Otherwise the next loop iteration will be
> on an odd BAR which doesn't exist.
> 
> The PCI_BASE_ADDRESS_MEM_TYPE_64 flag in epf_bar->flag reflects the
> value set by the platform in the bar_fixed_64bit member of
> epc_features.
> 
> This patch moves the checking of  PCI_BASE_ADDRESS_MEM_TYPE_64 in
> epf_bar->flags to before the 'continue' statement to advance the 'bar'
> loop index accordingly. The comment you see about 'pci_epc_set_bar()'
> preceding the moved code is the original comment and was also moved
> along with the code.

@Kishon, I would need your ACK to merge this patch.

Thanks,
Lorenzo

> Regards,
> Alan Mikhak
> 
> On Fri, May 24, 2019 at 1:51 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> >
> > Hi,
> >
> > On 24/05/19 5:25 AM, Alan Mikhak wrote:
> > > +Bjorn Helgaas, +Gustavo Pimentel, +Wen Yang, +Kangjie Lu
> > >
> > > On Thu, May 23, 2019 at 2:55 PM Alan Mikhak <alan.mikhak@sifive.com> wrote:
> > >>
> > >> Always skip odd bar when skipping 64bit BARs in pci_epf_test_set_bar()
> > >> and pci_epf_test_alloc_space().
> > >>
> > >> Otherwise, pci_epf_test_set_bar() will call pci_epc_set_bar() on odd loop
> > >> index when skipping reserved 64bit BAR. Moreover, pci_epf_test_alloc_space()
> > >> will call pci_epf_alloc_space() on bind for odd loop index when BAR is 64bit
> > >> but leaks on subsequent unbind by not calling pci_epf_free_space().
> > >>
> > >> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> > >> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
> > >> ---
> > >>  drivers/pci/endpoint/functions/pci-epf-test.c | 25 ++++++++++++-------------
> > >>  1 file changed, 12 insertions(+), 13 deletions(-)
> > >>
> > >> diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
> > >> index 27806987e93b..96156a537922 100644
> > >> --- a/drivers/pci/endpoint/functions/pci-epf-test.c
> > >> +++ b/drivers/pci/endpoint/functions/pci-epf-test.c
> > >> @@ -389,7 +389,7 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
> > >>
> > >>  static int pci_epf_test_set_bar(struct pci_epf *epf)
> > >>  {
> > >> -       int bar;
> > >> +       int bar, add;
> > >>         int ret;
> > >>         struct pci_epf_bar *epf_bar;
> > >>         struct pci_epc *epc = epf->epc;
> > >> @@ -400,8 +400,14 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
> > >>
> > >>         epc_features = epf_test->epc_features;
> > >>
> > >> -       for (bar = BAR_0; bar <= BAR_5; bar++) {
> > >> +       for (bar = BAR_0; bar <= BAR_5; bar += add) {
> > >>                 epf_bar = &epf->bar[bar];
> > >> +               /*
> > >> +                * pci_epc_set_bar() sets PCI_BASE_ADDRESS_MEM_TYPE_64
> > >> +                * if the specific implementation required a 64-bit BAR,
> > >> +                * even if we only requested a 32-bit BAR.
> > >> +                */
> >
> > set_bar shouldn't set PCI_BASE_ADDRESS_MEM_TYPE_64. If a platform supports only
> > 64-bit BAR, that should be specified in epc_features bar_fixed_64bit member.
> >
> > Thanks
> > Kishon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
