Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEF2AFD27
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 14:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqZGL1zbCk17snPNzADx36lFNjHyDDcgYxF9hxMeXIA=; b=bOaDm+ofdjPR7Q
	5k8LMWq0196iiUK99nonTCecGpdkaWHmPbme65+8DeqozLjoBGEzKjOqROl6SHE1fIcxlE+7yOLUW
	Pz/Jm5dLPB3pPSOWcmfNt0RwDTHJaHlapQo2SC1iUydEwG0nZU46COoV7QqQlqDVu8OZg6Z3hTrDR
	NadNKrenA/n9C9tXiOkOALeWXqwCQ+PqSN4RIfCS6edS96MTYMKrm2mssqFDFoPs88OXLvtd2IevF
	G6RPXvD10Ujj/MGYT9WrsUgn0cEU8EmErSsCO/D3QU990Opw9d005yRThzVDmE+BZZ7+XiX7qy3JI
	2cag6ngxkzPBZUlt1mrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i828i-0003Rz-PP; Wed, 11 Sep 2019 12:54:28 +0000
Received: from mail4.protonmail.ch ([185.70.40.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i828Y-0003RF-Cu
 for linux-riscv@lists.infradead.org; Wed, 11 Sep 2019 12:54:19 +0000
Date: Wed, 11 Sep 2019 12:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568206455;
 bh=/3BZ39augr1ATxiyl7hnoRIDGLBNGu5l1MgK7F7Oyjo=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=CTye0k+PE/+xBZIyKanXphQXS5P9TX4t6lty9PQYhv113W/RXzTQcdN+7lAUC9L3c
 3fzVwV9iI5nNcTsJEBLV/2rSrJkm/EC8v/zbw1MnY5FNZy8j1r8Nlu5EPxebZoWek3
 8KxFe+lCdyABaw69mDkNnLQEbijbzLiTYVxMCjbY=
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [RFC] buildtar: add case for riscv architecture
Message-ID: <X9f9LozkDQUeBwasTsPlPseP6ZT5yJHNY2GcIgoAgNQJPuFAyYimnDXTJUqxfrZ64GOIl5-uPh07NZnD1pi4uWhCpZvbu9khOW6rEq5P4jU=@aurabindo.in>
In-Reply-To: <8EF02DA7-46D3-4EA8-96FB-27708BF25DAC@sifive.com>
References: <NwVOGH2ZdDQaDK35QUy7y8GS__G8IYSIUUIBAJsimZq5BgvI3SzLS3uY6fV7Pgppq-RTRHzpT-8KrsLjDN74CPWwHTCWoSgHkGbeJNvyS30=@aurabindo.in>
 <8EF02DA7-46D3-4EA8-96FB-27708BF25DAC@sifive.com>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_055418_651975_DA48226A 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Aurabindo Jayamohanan <mail@aurabindo.in>
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE5vbmUgb2YgdGhlIGF2YWlsYWJsZSBSaXNjViBwbGF0Zm9ybXMgdGhhdCBJ4oCZbSBhd2Fy
ZSBvZiB1c2UgY29tcHJlc3NlZCBpbWFnZXMsIHVubGVzcyB0aGVyZSBhcmUgc29tZSBuZXcgYm9v
dGxvYWRlcnMgSSBoYXZlbuKAmXQgc2VlbiB5ZXQuCj4KCkkgbm90aWNlZCB0aGF0IGRlZmF1bHQg
YnVpbGQgaW1hZ2UgaXMgSW1hZ2UuZ3osIHdoaWNoIGlzIHdoeSBJIHRob3VnaHQgaXRzIGEgZ29v
ZCBpZGVhIHRvIGNvcHkgaXQgaW50byB0aGUgdGFyYmFsbC4gRG9lcyBzdWNoIGEgY29weSBub3Qg
bWFrZSBzZW5zZSBhdCB0aGlzIHBvaW50ID8KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNj
dkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcmlzY3YK
