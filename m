Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F429405
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 10:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5pEX4U6c/b/bHWAii0h+BgZ9IGW4CeJBxPgnuqQgz8=; b=JCXuuxLGwmthMN
	os0lVpgZolxPLIrRsuI7C0CVQc7snD59hSafkDFy9/hnE4qrwd51qTjxpsymhA/l8Ed/IKT/AF4E+
	5ApKvytNyn7VxcWgljn4RDV09a9fqN/3V8CfoaGXMT/U61CgtysZM/O4huX2yFDKJtyQ9h/6R5lJI
	jgQF9mXxC0z7iFA8lglG8gyFR4MTg8vg4VwoSbyA9bo4dwcJES21wI9/bGNTEmJmardsxRzP9Sh11
	rTyb9urybHIKu/g7rfdZfdxUVj9WQl2lkja4pxGhC2+hd8tGBwDUpZ+7quAiRlfuEBz93JYSI4D7/
	bYljAJbFQyw7mVNKL+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU62r-0004IH-Tj; Fri, 24 May 2019 08:59:21 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU62n-0004HE-LC
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 08:59:20 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AD2E7C013E;
 Fri, 24 May 2019 08:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558688341; bh=bYzSnyTIBbKe1pLAWuoTCC364RsfcAULt788c1xWBmc=;
 h=From:To:Subject:Date:References:In-Reply-To:From;
 b=Y1aiK0TmobjzL7Fr+BAPpGNQPcKd6dV5P4a36rIHq87RduBdtPDZY32g9es3iwNB1
 Upp5Pzlt17NQY2DoGaOdYeSTecak4pPbXWITxpHXo5ydz29mEaxy2rGM8J2ZRC+cbP
 N48SMzp6Mc6zquYZL8c5xvR9mNhk1uFKUnIN7IJvrpmADAU5dA1COb5a5Ya5K56Wpp
 KbUumOC5qzzEj8ixSq3FPg0Nd6fU+1IoIgxz+EdBquD1X1cTDIj+oRDINq3Lg/89wx
 1EnANShcZtgmWMa7M7Vh6xMMePIfNchdrYhzR+1MIPjYJ9KiQYkYJrXp65/uHmPYJI
 daxKWnINEcb2w==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 07518A005D;
 Fri, 24 May 2019 08:59:12 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 May 2019 01:59:12 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Fri, 24 May 2019 10:59:09 +0200
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Alan Mikhak <alan.mikhak@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "gustavo.pimentel@synopsys.com" <Gustavo.Pimentel@synopsys.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>,
 "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: RE: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
Thread-Topic: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
Thread-Index: AQHVEbZo9i5IX7USPEy/Zr+iai91iqZ58mjg
Date: Fri, 24 May 2019 08:59:09 +0000
Message-ID: <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
In-Reply-To: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
Accept-Language: pt-PT, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcZ3VzdGF2b1xh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLTJkMGM5YmViLTdlMDItMTFlOS05ODgyLWY4OTRj?=
 =?us-ascii?Q?MjczODA0MlxhbWUtdGVzdFwyZDBjOWJlYy03ZTAyLTExZTktOTg4Mi1mODk0?=
 =?us-ascii?Q?YzI3MzgwNDJib2R5LnR4dCIgc3o9IjI3NzcwIiB0PSIxMzIwMzE2MTk0Nzk0?=
 =?us-ascii?Q?MjM1NzUiIGg9Ik02UFFrMkVjYk9LekNVVFlTVzRVNVFOSUN6VT0iIGlkPSIi?=
 =?us-ascii?Q?IGJsPSIwIiBibz0iMSIgY2k9ImNBQUFBRVJIVTFSU1JVRk5DZ1VBQUJRSkFB?=
 =?us-ascii?Q?Qlh5akR5RGhMVkFRZ0RXWThjc0NZTENBTlpqeHl3SmdzT0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFIQUFBQUNrQ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFFQUFRQUJBQUFBRnRiQnB3QUFBQUFBQUFBQUFBQUFBSjRBQUFCbUFHa0Fi?=
 =?us-ascii?Q?Z0JoQUc0QVl3QmxBRjhBY0FCc0FHRUFiZ0J1QUdrQWJnQm5BRjhBZHdCaEFI?=
 =?us-ascii?Q?UUFaUUJ5QUcwQVlRQnlBR3NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3Qm5BR1lBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQVlRQnRBSE1BZFFCdUFHY0FYd0JqQUc4QWJnQm1BQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFjd0Jo?=
 =?us-ascii?Q?QUcwQWN3QjFBRzRBWndCZkFISUFaUUJ6QUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCekFHMEFhUUJqQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWmdCdkFIVUFiZ0JrQUhJQWVRQmZBSEFBWVFCeUFIUUFi?=
 =?us-ascii?Q?Z0JsQUhJQWN3QmZBSE1BZEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQm1B?=
 =?us-ascii?Q?RzhBZFFCdUFHUUFjZ0I1QUY4QWNBQmhBSElBZEFCdUFHVUFjZ0J6QUY4QWRB?=
 =?us-ascii?Q?QnpBRzBBWXdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFI?=
 =?us-ascii?Q?a0FYd0J3QUdFQWNnQjBBRzRBWlFCeUFITUFYd0IxQUcwQVl3QUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFad0IwQUhNQVh3QndBSElBYndCa0FIVUFZd0IwQUY4?=
 =?us-ascii?Q?QWRBQnlBR0VBYVFCdUFHa0FiZ0JuQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHRUFiQUJsQUhNQVh3QmhBR01BWXdCdkFIVUFiZ0IwQUY4QWNBQnNBR0VB?=
 =?us-ascii?Q?YmdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSE1BWVFCc0FHVUFjd0Jm?=
 =?us-ascii?Q?QUhFQWRRQnZBSFFBWlFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUNlQUFBQWN3QnVBSEFBY3dCZkFHd0FhUUJqQUdVQWJnQnpB?=
 =?us-ascii?Q?R1VBWHdCMEFHVUFjZ0J0QUY4QU1RQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFB?=
 =?us-ascii?Q?QUJ6QUc0QWNBQnpBRjhBYkFCcEFHTUFaUUJ1QUhNQVpRQmZBSFFBWlFCeUFH?=
 =?us-ascii?Q?MEFYd0J6QUhRQWRRQmtBR1VBYmdCMEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFIWUFad0JmQUdzQVpR?=
 =?us-ascii?Q?QjVBSGNBYndCeUFHUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFB?=
 =?us-ascii?Q?QUFBQUFDQUFBQUFBQT0iLz48L21ldGE+?=
x-dg-rorf: true
x-originating-ip: [10.107.25.131]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015917_713483_02C4AF66 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Alan,

This patch implementation is very HW implementation dependent and 
requires the DMA to exposed through PCIe BARs, which aren't always the 
case. Besides, you are defining some control bits on 
include/linux/pci-epc.h that may not have any meaning to other types of 
DMA.

I don't think this was what Kishon had in mind when he developed the 
pcitest, but let see what Kishon was to say about it.

I've developed a DMA driver for DWC PCI using Linux Kernel DMAengine API 
and which I submitted some days ago.
By having a DMA driver which implemented using DMAengine API, means the 
pcitest can use the DMAengine client API, which will be completely 
generic to any other DMA implementation.

My DMA driver for DWC PCI was done thinking on my use case, which is was 
interacting from the Root Complex side with DMA IP implemented on the 
Endpoint, which was exposed through PCI BARs. However, I think it would 
be possible to reuse the same core code and instead of using the PCI-glue 
to adapt it and be used easily on the Endpoint side and to be triggered 
there.

Gustavo

-----Original Message-----
From: Alan Mikhak <alan.mikhak@sifive.com> 

Sent: 23 de maio de 2019 23:24
To: linux-pci@vger.kernel.org; 
linux-kernel@vger.kernel.org; kishon@ti.com; lorenzo.pieralisi@arm.com; 
arnd@arndb.de; gregkh@linuxfoundation.org; jingoohan1@gmail.com; 
gustavo.pimentel@synopsys.com; bhelgaas@google.com; 
wen.yang99@zte.com.cn; kjlu@umn.edu; linux-riscv@lists.infradead.org; 
palmer@sifive.com; paul.walmsley@sifive.com
Cc: Alan Mikhak 
<alan.mikhak@sifive.com>
Subject: [PATCH] PCI: endpoint: Add DMA to Linux 
PCI EP Framework

This patch depends on patch the following patches:
[PATCH v2 1/2] tools: PCI: Fix broken pcitest compilation
[PATCH v2 2/2] tools: PCI: Fix compiler warning in pcitest

The Linux PCI Endpoint Framework currently does not support initiation of
DMA read and write operations. This patch extends the Linux PCI Endpoint
Framework by adding support for the user of pcitest to inititate DMA
read and write operations via PCIe endpoint controller drivers. This 
patch
provides the means but leaves it up to individual PCIe endpoint 
controller
drivers to implement DMA support, if desired.

This patch provides support for the pcitest user to instruct the endpoint
to initiate local DMA transfers consisting of single or linked-list 
blocks
into endpoint buffers using the endpoint DMA controller. It anticipates
that future patches would add support for the pcitest user to instruct
the endpoint to participate in remote DMA transfers initiated from the
root complex into endpoint buffers using the endpoint DMA controller.

This patch depends on the first two patches in its patchset to resolve
a pre-existing pcitest compilation error.

* Add -d flag to pcitest command line options so user can specify
that a read or write command should execute using local DMA to be
initiated by endpoint.

* Add -L flag to pcitest command line options so user can specify
that DMA operation should execute in linked-list mode.

* Add struct pcitest_dma for pcitest to communicate DMA options
from host userspace to pci_endpoint_test driver in host kernel
via two new ioctls PCITEST_WRITE_DMA and PCITEST_READ_DMA.

* Add command flags so pci_endpoint_test driver running on host
can communicate DMA read and write options across the PCI bus 
to pci-epf-test driver running on endpoint.

* Add struct pci_epc_dma so pci-epf-test driver can create DMA
read and write descriptors for single or linked-list DMA operations
and pass such descriptors to pci-epc-core via new functions
pci_epc_dma_read() and pci_epc_dma_write().

* Add four new functions in pci-epf-test driver to implement
new DMA read and write tests by initiating local DMA transfers
in linked-list and single modes via PCIe endpoint controller
drivers: pci_epf_test_read_dma(), pci_epf_test_read_dma_list(),
pci_epf_test_write_dma(), and pci_epf_test_write_dma_list().

* Add dma_read and dma_write functions to struct pci_epc_ops
so pci_epc_dma_read() and pci_epc_dma_write() functions can
pass DMA descriptors down the stack to pcie-designware-ep layer.

* Add dma_read and dma_write functions to struct dw_pcie_ep_ops
so pcie-designware-ep layer can communicate DMA descriptors down
the stack to vendor PCIe endpoint controller drivers.

* Add dma_base pointer to struct dw_pcie for vendor PCIe endpoint
controller driver to set if it implements DMA operations.

* Add two common pcie-designware functions dw_pcie_writel_dma()
and dw_pcie_readl_dma() for use by vendor PCIe endpoint
controllers to access DMA registers via the dma_base pointer.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 
drivers/misc/pci_endpoint_test.c                |  72 +++++++-
 drivers/pci/controller/dwc/pcie-designware-ep.c |  22 +++
 drivers/pci/controller/dwc/pcie-designware.h    |  13 ++
 drivers/pci/endpoint/functions/pci-epf-test.c   | 211 
+++++++++++++++++++++++-
 drivers/pci/endpoint/pci-epc-core.c             |  46 ++++++
 include/linux/pci-epc.h                         |  45 +++++
 include/uapi/linux/pcitest.h                    |   7 +
 tools/pci/pcitest.c                             |  29 +++-
 8 files changed, 432 insertions(+), 13 deletions(-)

diff --git a/drivers/misc/pci_endpoint_test.c 
b/drivers/misc/pci_endpoint_test.c
index 7b015f2a1c6f..63b86d81a6b5 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -34,6 +34,7 @@
 #include <linux/pci_regs.h>
 
 #include <uapi/linux/pcitest.h>
+#include <linux/uaccess.h>
 
 #define DRV_MODULE_NAME				"pci-endpoint-test"
 
@@ -51,6 +52,25 @@
 #define COMMAND_READ				BIT(3)
 #define COMMAND_WRITE				BIT(4)
 #define COMMAND_COPY				BIT(5)
+#define COMMAND_FLAG2				BIT(30)
+#define COMMAND_FLAG1				BIT(31)
+
+#define COMMAND_FLAGS				(COMMAND_FLAG1 | \
+						 COMMAND_FLAG2)
+
+#define COMMAND_FLAG_NONE			0
+#define COMMAND_FLAG_DMA			COMMAND_FLAG1
+#define COMMAND_FLAG_DMA_LIST			COMMAND_FLAG2
+
+#define COMMAND_READ_DMA			(COMMAND_READ | \
+						 COMMAND_FLAG_DMA)
+#define COMMAND_READ_DMA_LIST			(COMMAND_READ_DMA | \
+						 COMMAND_FLAG_DMA_LIST)
+
+#define COMMAND_WRITE_DMA			(COMMAND_WRITE | \
+						 COMMAND_FLAG_DMA)
+#define COMMAND_WRITE_DMA_LIST			(COMMAND_WRITE_DMA | \
+						 COMMAND_FLAG_DMA_LIST)
 
 #define PCI_ENDPOINT_TEST_STATUS		0x8
 #define STATUS_READ_SUCCESS			BIT(0)
@@ -425,7 +445,9 @@ static bool pci_endpoint_test_copy(struct 
pci_endpoint_test *test, size_t size)
 	return ret;
 }
 
-static bool pci_endpoint_test_write(struct pci_endpoint_test *test, 
size_t size)
+static bool pci_endpoint_test_write(struct pci_endpoint_test *test,
+				    size_t size,
+				    u32 flags)
 {
 	bool ret = false;
 	u32 reg;
@@ -480,7 +502,7 @@ static bool pci_endpoint_test_write(struct 
pci_endpoint_test *test, size_t size)
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_TYPE, irq_type);
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 1);
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_COMMAND,
-				 COMMAND_READ);
+				 COMMAND_READ | flags);
 
 	wait_for_completion(&test->irq_raised);
 
@@ -494,7 +516,24 @@ static bool pci_endpoint_test_write(struct 
pci_endpoint_test *test, size_t size)
 	return ret;
 }
 
-static bool pci_endpoint_test_read(struct pci_endpoint_test *test, 
size_t size)
+static bool pci_endpoint_test_write_dma(struct pci_endpoint_test *test,
+					unsigned long arg)
+{
+	u32 flags = COMMAND_FLAG_DMA;
+	struct pcitest_dma dma;
+
+	if (copy_from_user(&dma, (void *)arg, sizeof(struct pcitest_dma)))
+		return -EACCES;
+
+	if (dma.list)
+		flags |= COMMAND_FLAG_DMA_LIST;
+
+	return pci_endpoint_test_write(test, dma.size, flags);
+}
+
+static bool pci_endpoint_test_read(struct pci_endpoint_test *test,
+				   size_t size,
+				   u32 flags)
 {
 	bool ret = false;
 	void *addr;
@@ -542,7 +581,7 @@ static bool pci_endpoint_test_read(struct 
pci_endpoint_test *test, size_t size)
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_TYPE, irq_type);
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 1);
 	pci_endpoint_test_writel(test, PCI_ENDPOINT_TEST_COMMAND,
-				 COMMAND_WRITE);
+				 COMMAND_WRITE | flags);
 
 	wait_for_completion(&test->irq_raised);
 
@@ -555,6 +594,21 @@ static bool pci_endpoint_test_read(struct 
pci_endpoint_test *test, size_t size)
 	return ret;
 }
 
+static bool pci_endpoint_test_read_dma(struct pci_endpoint_test *test,
+				       unsigned long arg)
+{
+	u32 flags = COMMAND_FLAG_DMA;
+	struct pcitest_dma dma;
+
+	if (copy_from_user(&dma, (void *)arg, sizeof(struct pcitest_dma)))
+		return -EACCES;
+
+	if (dma.list)
+		flags |= COMMAND_FLAG_DMA_LIST;
+
+	return pci_endpoint_test_read(test, dma.size, flags);
+}
+
 static bool pci_endpoint_test_set_irq(struct pci_endpoint_test *test,
 				      int req_irq_type)
 {
@@ -612,11 +666,17 @@ static long pci_endpoint_test_ioctl(struct file 
*file, unsigned int cmd,
 	case PCITEST_MSIX:
 		ret = pci_endpoint_test_msi_irq(test, arg, cmd == PCITEST_MSIX);
 		break;
+	case PCITEST_WRITE_DMA:
+		ret = pci_endpoint_test_write_dma(test, arg);
+		break;
+	case PCITEST_READ_DMA:
+		ret = pci_endpoint_test_read_dma(test, arg);
+		break;
 	case PCITEST_WRITE:
-		ret = pci_endpoint_test_write(test, arg);
+		ret = pci_endpoint_test_write(test, arg, COMMAND_FLAG_NONE);
 		break;
 	case PCITEST_READ:
-		ret = pci_endpoint_test_read(test, arg);
+		ret = pci_endpoint_test_read(test, arg, COMMAND_FLAG_NONE);
 		break;
 	case PCITEST_COPY:
 		ret = pci_endpoint_test_copy(test, arg);
diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c 
b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 2bf5a35c0570..7e25c0f5edf1 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -366,6 +366,26 @@ dw_pcie_ep_get_features(struct pci_epc *epc, u8 
func_no)
 	return ep->ops->get_features(ep);
 }
 
+static int dw_pcie_ep_dma_read(struct pci_epc *epc, struct pci_epc_dma 
*dma)
+{
+	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
+
+	if (!ep->ops->dma_read)
+		return -EINVAL;
+
+	return ep->ops->dma_read(ep, dma);
+}
+
+static int dw_pcie_ep_dma_write(struct pci_epc *epc, struct pci_epc_dma 
*dma)
+{
+	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
+
+	if (!ep->ops->dma_write)
+		return -EINVAL;
+
+	return ep->ops->dma_write(ep, dma);
+}
+
 static const struct pci_epc_ops epc_ops = {
 	.write_header		= dw_pcie_ep_write_header,
 	.set_bar		= dw_pcie_ep_set_bar,
@@ -380,6 +400,8 @@ static const struct pci_epc_ops epc_ops = {
 	.start			= dw_pcie_ep_start,
 	.stop			= dw_pcie_ep_stop,
 	.get_features		= dw_pcie_ep_get_features,
+	.dma_read		= dw_pcie_ep_dma_read,
+	.dma_write		= dw_pcie_ep_dma_write
 };
 
 int dw_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep, u8 func_no)
diff --git a/drivers/pci/controller/dwc/pcie-designware.h 
b/drivers/pci/controller/dwc/pcie-designware.h
index b8993f2b78df..11d44ec8acc7 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -197,6 +197,8 @@ struct dw_pcie_ep_ops {
 	int	(*raise_irq)(struct dw_pcie_ep *ep, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
 	const struct pci_epc_features* (*get_features)(struct dw_pcie_ep *ep);
+	int	(*dma_read)(struct dw_pcie_ep *ep, struct pci_epc_dma *dma);
+	int	(*dma_write)(struct dw_pcie_ep *ep, struct pci_epc_dma *dma);
 };
 
 struct dw_pcie_ep {
@@ -238,6 +240,7 @@ struct dw_pcie {
 	void __iomem		*dbi_base2;
 	/* Used when iatu_unroll_enabled is true */
 	void __iomem		*atu_base;
+	void __iomem		*dma_base;
 	u32			num_viewport;
 	u8			iatu_unroll_enabled;
 	struct pcie_port	pp;
@@ -323,6 +326,16 @@ static inline u32 dw_pcie_readl_atu(struct dw_pcie 
*pci, u32 reg)
 	return __dw_pcie_read_dbi(pci, pci->atu_base, reg, 0x4);
 }
 
+static inline void dw_pcie_writel_dma(struct dw_pcie *pci, u32 reg, u32 
val)
+{
+	__dw_pcie_write_dbi(pci, pci->dma_base, reg, 0x4, val);
+}
+
+static inline u32 dw_pcie_readl_dma(struct dw_pcie *pci, u32 reg)
+{
+	return __dw_pcie_read_dbi(pci, pci->dma_base, reg, 0x4);
+}
+
 static inline void dw_pcie_dbi_ro_wr_en(struct dw_pcie *pci)
 {
 	u32 reg;
diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c 
b/drivers/pci/endpoint/functions/pci-epf-test.c
index 27806987e93b..3910073712e9 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -28,6 +28,25 @@
 #define COMMAND_READ			BIT(3)
 #define COMMAND_WRITE			BIT(4)
 #define COMMAND_COPY			BIT(5)
+#define COMMAND_FLAG2			BIT(30)
+#define COMMAND_FLAG1			BIT(31)
+
+#define COMMAND_FLAGS			(COMMAND_FLAG1 | \
+					 COMMAND_FLAG2)
+
+#define COMMAND_FLAG_NONE		0
+#define COMMAND_FLAG_DMA		COMMAND_FLAG1
+#define COMMAND_FLAG_DMA_LIST		COMMAND_FLAG2
+
+#define COMMAND_READ_DMA		(COMMAND_READ | \
+					 COMMAND_FLAG_DMA)
+#define COMMAND_READ_DMA_LIST		(COMMAND_READ_DMA | \
+					 COMMAND_FLAG_DMA_LIST)
+
+#define COMMAND_WRITE_DMA		(COMMAND_WRITE | \
+					 COMMAND_FLAG_DMA)
+#define COMMAND_WRITE_DMA_LIST		(COMMAND_WRITE_DMA | \
+					 COMMAND_FLAG_DMA_LIST)
 
 #define STATUS_READ_SUCCESS		BIT(0)
 #define STATUS_READ_FAIL		BIT(1)
@@ -187,6 +206,93 @@ static int pci_epf_test_read(struct pci_epf_test 
*epf_test)
 	return ret;
 }
 
+static int pci_epf_test_read_dma(struct pci_epf_test *epf_test)
+{
+	int ret = -ENOMEM;
+	struct pci_epf *epf = epf_test->epf;
+	struct device *dev = &epf->dev;
+	struct pci_epc *epc = epf->epc;
+	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
+	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
+	struct pci_epc_dma dma;
+	u32 crc32;
+	void *buf;
+
+	buf = kzalloc(reg->size, GFP_KERNEL);
+	if (buf) {
+		dma.control = PCI_EPC_DMA_CONTROL_LIE;
+		dma.size = reg->size;
+		dma.sar = reg->src_addr;
+		dma.dar = virt_to_phys(buf);
+
+		ret = pci_epc_dma_read(epc, &dma);
+		if (ret) {
+			dev_err(dev, "pci_epc_dma_read %d\n", ret);
+		} else {
+			crc32 = crc32_le(~0, buf, reg->size);
+			if (crc32 != reg->checksum)
+				ret = -EIO;
+		}
+
+		kfree(buf);
+	}
+
+	return ret;
+}
+
+static int pci_epf_test_read_dma_list(struct pci_epf_test *epf_test)
+{
+	int ret = -ENOMEM;
+	struct pci_epf *epf = epf_test->epf;
+	struct device *dev = &epf->dev;
+	struct pci_epc *epc = epf->epc;
+	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
+	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
+	struct pci_epc_dma *dma;
+	u32 crc32;
+	void *buf;
+
+	dma = kcalloc(3, sizeof(*dma), GFP_KERNEL);
+	if (dma) {
+		buf = kzalloc(reg->size, GFP_KERNEL);
+		if (buf) {
+			int half_size = reg->size >> 1;
+			phys_addr_t phys_addr = virt_to_phys(buf);
+
+			dma[0].control = PCI_EPC_DMA_CONTROL_CB;
+			dma[0].size = half_size ? half_size : 1;
+			dma[0].sar = reg->src_addr;
+			dma[0].dar = phys_addr;
+
+			dma[1].control = PCI_EPC_DMA_CONTROL_CB |
+					 PCI_EPC_DMA_CONTROL_LIE;
+			dma[1].size = reg->size - half_size;
+			dma[1].sar = reg->src_addr + half_size;
+			dma[1].dar = phys_addr + half_size;
+
+			dma[2].control = PCI_EPC_DMA_CONTROL_EOL;
+			dma[2].size = 0;
+			dma[2].sar = virt_to_phys(dma);
+			dma[2].dar = 0;
+
+			ret = pci_epc_dma_read(epc, dma);
+			if (ret) {
+				dev_err(dev, "pci_epc_dma_read %d\n", ret);
+			} else {
+				crc32 = crc32_le(~0, buf, reg->size);
+				if (crc32 != reg->checksum)
+					ret = -EIO;
+			}
+
+			kfree(buf);
+		}
+
+		kfree(dma);
+	}
+
+	return ret;
+}
+
 static int pci_epf_test_write(struct pci_epf_test *epf_test)
 {
 	int ret;
@@ -244,6 +350,87 @@ static int pci_epf_test_write(struct pci_epf_test 
*epf_test)
 	return ret;
 }
 
+static int pci_epf_test_write_dma(struct pci_epf_test *epf_test)
+{
+	int ret = -ENOMEM;
+	struct pci_epf *epf = epf_test->epf;
+	struct device *dev = &epf->dev;
+	struct pci_epc *epc = epf->epc;
+	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
+	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
+	struct pci_epc_dma dma;
+	void *buf;
+
+	buf = kzalloc(reg->size, GFP_KERNEL);
+	if (buf) {
+		get_random_bytes(buf, reg->size);
+		reg->checksum = crc32_le(~0, buf, reg->size);
+
+		dma.control = PCI_EPC_DMA_CONTROL_LIE;
+		dma.size = reg->size;
+		dma.sar = virt_to_phys(buf);
+		dma.dar = reg->dst_addr;
+
+		ret = pci_epc_dma_write(epc, &dma);
+		if (ret)
+			dev_err(dev, "pci_epc_dma_write %d\n", ret);
+
+		kfree(buf);
+	}
+
+	return ret;
+}
+
+static int pci_epf_test_write_dma_list(struct pci_epf_test *epf_test)
+{
+	int ret = -ENOMEM;
+	struct pci_epf *epf = epf_test->epf;
+	struct device *dev = &epf->dev;
+	struct pci_epc *epc = epf->epc;
+	enum pci_barno test_reg_bar = epf_test->test_reg_bar;
+	struct pci_epf_test_reg *reg = epf_test->reg[test_reg_bar];
+	struct pci_epc_dma *dma;
+	void *buf;
+
+	dma = kcalloc(3, sizeof(*dma), GFP_KERNEL);
+	if (dma) {
+		buf = kzalloc(reg->size, GFP_KERNEL);
+		if (buf) {
+			int half_size = reg->size >> 1;
+			phys_addr_t phys_addr = virt_to_phys(buf);
+
+			get_random_bytes(buf, reg->size);
+			reg->checksum = crc32_le(~0, buf, reg->size);
+
+			dma[0].control = PCI_EPC_DMA_CONTROL_CB;
+			dma[0].size = half_size ? half_size : 1;
+			dma[0].sar = phys_addr;
+			dma[0].dar = reg->dst_addr;
+
+			dma[1].control = PCI_EPC_DMA_CONTROL_CB |
+					 PCI_EPC_DMA_CONTROL_LIE;
+			dma[1].size = reg->size - half_size;
+			dma[1].sar = phys_addr + half_size;
+			dma[1].dar = reg->dst_addr + half_size;
+
+			dma[2].control = PCI_EPC_DMA_CONTROL_EOL;
+			dma[2].size = 0;
+			dma[2].sar = virt_to_phys(dma);
+			dma[2].dar = 0;
+
+			ret = pci_epc_dma_write(epc, dma);
+			if (ret)
+				dev_err(dev, "pci_epc_dma_write %d\n", ret);
+
+			kfree(buf);
+		}
+
+		kfree(dma);
+	}
+
+	return ret;
+}
+
 static void pci_epf_test_raise_irq(struct pci_epf_test *epf_test, u8 
irq_type,
 				   u16 irq)
 {
@@ -303,18 +490,34 @@ static void pci_epf_test_cmd_handler(struct 
work_struct *work)
 	}
 
 	if (command & COMMAND_WRITE) {
-		ret = pci_epf_test_write(epf_test);
-		if (ret)
-			reg->status |= STATUS_WRITE_FAIL;
+		command &= (COMMAND_WRITE | COMMAND_FLAGS);
+		if (command == COMMAND_WRITE)
+			ret = pci_epf_test_write(epf_test);
+		else if (command == COMMAND_WRITE_DMA)
+			ret = pci_epf_test_write_dma(epf_test);
+		else if (command == COMMAND_WRITE_DMA_LIST)
+			ret = pci_epf_test_write_dma_list(epf_test);
 		else
+			ret = -EINVAL;
+		if (!ret)
 			reg->status |= STATUS_WRITE_SUCCESS;
+		else
+			reg->status |= STATUS_WRITE_FAIL;
 		pci_epf_test_raise_irq(epf_test, reg->irq_type,
 				       reg->irq_number);
 		goto reset_handler;
 	}
 
 	if (command & COMMAND_READ) {
-		ret = pci_epf_test_read(epf_test);
+		command &= (COMMAND_READ | COMMAND_FLAGS);
+		if (command == COMMAND_READ)
+			ret = pci_epf_test_read(epf_test);
+		else if (command == COMMAND_READ_DMA)
+			ret = pci_epf_test_read_dma(epf_test);
+		else if (command == COMMAND_READ_DMA_LIST)
+			ret = pci_epf_test_read_dma_list(epf_test);
+		else
+			ret = -EINVAL;
 		if (!ret)
 			reg->status |= STATUS_READ_SUCCESS;
 		else
diff --git a/drivers/pci/endpoint/pci-epc-core.c 
b/drivers/pci/endpoint/pci-epc-core.c
index e4712a0f249c..a57e501d4abc 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -107,6 +107,52 @@ unsigned int pci_epc_get_first_free_bar(const struct 
pci_epc_features
 EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
 
 /**
+ * pci_epc_dma_write() - DMA a block of memory to remote address
+ * @epc: the EPC device on which to perform DMA transfer
+ * @dma: DMA descriptors array
+ *
+ * Write contents of local memory to remote memory by DMA.
+ */
+int pci_epc_dma_write(struct pci_epc *epc, struct pci_epc_dma *dma)
+{
+	int ret;
+	unsigned long flags;
+
+	if (IS_ERR(epc) || !epc->ops->dma_write)
+		return -EINVAL;
+
+	spin_lock_irqsave(&epc->lock, flags);
+	ret = epc->ops->dma_write(epc, dma);
+	spin_unlock_irqrestore(&epc->lock, flags);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pci_epc_dma_write);
+
+/**
+ * pci_epc_dma_read() - DMA a block of memory from remote address
+ * @epc: the EPC device on which to perform DMA transfer
+ * @dma: DMA descriptors array
+ *
+ * Read contents of remote memory into local memory by DMA.
+ */
+int pci_epc_dma_read(struct pci_epc *epc, struct pci_epc_dma *dma)
+{
+	int ret;
+	unsigned long flags;
+
+	if (IS_ERR(epc) || !epc->ops->dma_read)
+		return -EINVAL;
+
+	spin_lock_irqsave(&epc->lock, flags);
+	ret = epc->ops->dma_read(epc, dma);
+	spin_unlock_irqrestore(&epc->lock, flags);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pci_epc_dma_read);
+
+/**
  * pci_epc_get_features() - get the features supported by EPC
  * @epc: the features supported by *this* EPC device will be returned
  * @func_no: the features supported by the EPC device specific to the
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index f641badc2c61..d845f13d0baf 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -21,6 +21,45 @@ enum pci_epc_irq_type {
 };
 
 /**
+ * struct pci_epc_dma - descriptor for a DMA transfer element
+ * @control: DMA channel control bits for read or write transfer
+ * @size: size of DMA transfer element
+ * @sar: source addrees for DMA transfer element
+ * @dar: destination address for DMA transfer element
+ */
+
+struct pci_epc_dma {
+	u32	control;
+	u32	size;
+	u64	sar;
+	u64	dar;
+};
+
+#define PCI_EPC_DMA_CONTROL_CB          (BIT(0))
+#define PCI_EPC_DMA_CONTROL_TCB         (BIT(1))
+#define PCI_EPC_DMA_CONTROL_LLP         (BIT(2))
+#define PCI_EPC_DMA_CONTROL_LIE         (BIT(3))
+#define PCI_EPC_DMA_CONTROL_RIE         (BIT(4))
+#define PCI_EPC_DMA_CONTROL_CS          (BIT(5) | BIT(6))
+#define PCI_EPC_DMA_CONTROL_CCS         (BIT(8))
+#define PCI_EPC_DMA_CONTROL_LLE         (BIT(9))
+#define PCI_EPC_DMA_CONTROL_FUNC        (BIT(12) | BIT(13) | BIT(14) | \
+					 BIT(15) | BIT(16))
+#define PCI_EPC_DMA_CONTROL_NS_DST      (BIT(23))
+#define PCI_EPC_DMA_CONTROL_NS_SRC      (BIT(24))
+#define PCI_EPC_DMA_CONTROL_RO          (BIT(25))
+#define PCI_EPC_DMA_CONTROL_TC          (BIT(27) | BIT(28) | BIT(29))
+#define PCI_EPC_DMA_CONTROL_AT          (BIT(30) | BIT(31))
+
+#define PCI_EPC_DMA_CONTROL_EOL         (PCI_EPC_DMA_CONTROL_TCB | \
+					 PCI_EPC_DMA_CONTROL_LLP)
+
+#define PCI_EPC_DMA_CONTROL_LIST        (PCI_EPC_DMA_CONTROL_CB | \
+					 PCI_EPC_DMA_CONTROL_EOL| \
+					 PCI_EPC_DMA_CONTROL_CCS | \
+					 PCI_EPC_DMA_CONTROL_LLE)
+
+/**
  * struct pci_epc_ops - set of function pointers for performing EPC 
operations
  * @write_header: ops to populate configuration space header
  * @set_bar: ops to configure the BAR
@@ -38,6 +77,8 @@ enum pci_epc_irq_type {
  * @raise_irq: ops to raise a legacy, MSI or MSI-X interrupt
  * @start: ops to start the PCI link
  * @stop: ops to stop the PCI link
+ * @dma_read: ops to read remote memory into local memory by DMA
+ * @dma_write: ops to write local memory to remote memory by DMA
  * @owner: the module owner containing the ops
  */
 struct pci_epc_ops {
@@ -61,6 +102,8 @@ struct pci_epc_ops {
 	void	(*stop)(struct pci_epc *epc);
 	const struct pci_epc_features* (*get_features)(struct pci_epc *epc,
 						       u8 func_no);
+	int	(*dma_read)(struct pci_epc *epc, struct pci_epc_dma *dma);
+	int	(*dma_write)(struct pci_epc *epc, struct pci_epc_dma *dma);
 	struct module *owner;
 };
 
@@ -152,6 +195,8 @@ void pci_epc_destroy(struct pci_epc *epc);
 int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf);
 void pci_epc_linkup(struct pci_epc *epc);
 void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf);
+int pci_epc_dma_read(struct pci_epc *epc, struct pci_epc_dma *dma);
+int pci_epc_dma_write(struct pci_epc *epc, struct pci_epc_dma *dma);
 int pci_epc_write_header(struct pci_epc *epc, u8 func_no,
 			 struct pci_epf_header *hdr);
 int pci_epc_set_bar(struct pci_epc *epc, u8 func_no,
diff --git a/include/uapi/linux/pcitest.h b/include/uapi/linux/pcitest.h
index cbf422e56696..505f4a3811c2 100644
--- a/include/uapi/linux/pcitest.h
+++ b/include/uapi/linux/pcitest.h
@@ -10,11 +10,18 @@
 #ifndef __UAPI_LINUX_PCITEST_H
 #define __UAPI_LINUX_PCITEST_H
 
+struct pcitest_dma {
+	size_t	size;
+	bool	list;
+};
+
 #define PCITEST_BAR		_IO('P', 0x1)
 #define PCITEST_LEGACY_IRQ	_IO('P', 0x2)
 #define PCITEST_MSI		_IOW('P', 0x3, int)
 #define PCITEST_WRITE		_IOW('P', 0x4, unsigned long)
+#define PCITEST_WRITE_DMA	_IOW('P', 0x4, struct pcitest_dma)
 #define PCITEST_READ		_IOW('P', 0x5, unsigned long)
+#define PCITEST_READ_DMA	_IOW('P', 0x5, struct pcitest_dma)
 #define PCITEST_COPY		_IOW('P', 0x6, unsigned long)
 #define PCITEST_MSIX		_IOW('P', 0x7, int)
 #define PCITEST_SET_IRQTYPE	_IOW('P', 0x8, int)
diff --git a/tools/pci/pcitest.c b/tools/pci/pcitest.c
index 6f1303104d84..66cd19acf18c 100644
--- a/tools/pci/pcitest.c
+++ b/tools/pci/pcitest.c
@@ -44,11 +44,14 @@ struct pci_test {
 	bool		read;
 	bool		write;
 	bool		copy;
+	bool		dma;
+	bool		dma_list;
 	unsigned long	size;
 };
 
 static int run_test(struct pci_test *test)
 {
+	struct pcitest_dma dma;
 	int ret = -EINVAL;
 	int fd;
 
@@ -113,7 +116,13 @@ static int run_test(struct pci_test *test)
 	}
 
 	if (test->write) {
-		ret = ioctl(fd, PCITEST_WRITE, test->size);
+		if (test->dma) {
+			dma.size = test->size;
+			dma.list = test->dma_list;
+			ret = ioctl(fd, PCITEST_WRITE_DMA, &dma);
+		} else {
+			ret = ioctl(fd, PCITEST_WRITE, test->size);
+		}
 		fprintf(stdout, "WRITE (%7ld bytes):\t\t", test->size);
 		if (ret < 0)
 			fprintf(stdout, "TEST FAILED\n");
@@ -122,7 +131,13 @@ static int run_test(struct pci_test *test)
 	}
 
 	if (test->read) {
-		ret = ioctl(fd, PCITEST_READ, test->size);
+		if (test->dma) {
+			dma.size = test->size;
+			dma.list = test->dma_list;
+			ret = ioctl(fd, PCITEST_READ_DMA, &dma);
+		} else {
+			ret = ioctl(fd, PCITEST_READ, test->size);
+		}
 		fprintf(stdout, "READ (%7ld bytes):\t\t", test->size);
 		if (ret < 0)
 			fprintf(stdout, "TEST FAILED\n");
@@ -163,7 +178,7 @@ int main(int argc, char **argv)
 	/* set default endpoint device */
 	test->device = "/dev/pci-endpoint-test.0";
 
-	while ((c = getopt(argc, argv, "D:b:m:x:i:Ilhrwcs:")) != EOF)
+	while ((c = getopt(argc, argv, "D:b:m:x:i:IlhrwcdLs:")) != EOF)
 	switch (c) {
 	case 'D':
 		test->device = optarg;
@@ -204,6 +219,12 @@ int main(int argc, char **argv)
 	case 'c':
 		test->copy = true;
 		continue;
+	case 'd':
+		test->dma = true;
+		continue;
+	case 'L':
+		test->dma_list = true;
+		continue;
 	case 's':
 		test->size = strtoul(optarg, NULL, 0);
 		continue;
@@ -223,6 +244,8 @@ int main(int argc, char **argv)
 			"\t-r			Read buffer test\n"
 			"\t-w			Write buffer test\n"
 			"\t-c			Copy buffer test\n"
+			"\t-d			DMA mode for read or write test\n"
+			"\t-L			Linked-List DMA flag for DMA mode\n"
 			"\t-s <size>		Size of buffer {default: 100KB}\n"
 			"\t-h			Print this help message\n",
 			argv[0]);
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
