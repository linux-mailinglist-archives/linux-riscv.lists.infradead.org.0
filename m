Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A801165C7
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 16:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JE0bXzbM76kIeqUY9DQ+nkMEJmdZCdHlZ2xg/exUE2I=; b=cNdtTUJuEnU64X
	QQkq3MyFhmJh9XqznPwxBlxF8pnHVhcsPj+AS8wo6Od2C0fDh9R2uRKFi5oLkjFZ62Oy5vi+L7MHe
	Il/NCd5mSJER98kwulDNLUo6GDJcA96eE7j7oh4q9b4nd+W4heCRypU6lkSl4zm/vDIGjG1xPVw5Y
	O6CWZuaaFIudpbViMGDirr5SXQ3RThcwLtMVPea8FXwnmqIJLW0XvyS+Re5zurBrBOA5kL91ahCks
	Yh+/gxhKsx0g8619veyki1WKUJ4KUSwDnimQXqkn45Nq1mAtaaN6drwaUGUM8rGffUDuzowljePLA
	IUHp2/XRzs0gVsUqthsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1CR-0004Fj-Ex; Tue, 07 May 2019 14:36:07 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1CO-0004Ec-4w
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 14:36:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C26BDAD55;
 Tue,  7 May 2019 14:36:02 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
References: <mvm5zqmu35d.fsf@suse.de>
 <b2030f8c-010e-7088-271e-e2398f7d37db@suse.com>
 <mvmmujyqrpj.fsf@suse.de>
 <ae3297cc-8a8d-a48e-159e-741c7af41cf7@suse.com>
X-Yow: I'm RELIGIOUS!!  I love a man with a HAIRPIECE!!
 Equip me with MISSILES!!
Date: Tue, 07 May 2019 16:36:02 +0200
In-Reply-To: <ae3297cc-8a8d-a48e-159e-741c7af41cf7@suse.com> (Nikolay
 Borisov's message of "Tue, 7 May 2019 17:22:08 +0300")
Message-ID: <mvmef5aqqlp.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_073604_332270_5372DEFF 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTWFpIDA3IDIwMTksIE5pa29sYXkgQm9yaXNvdiA8bmJvcmlzb3ZAc3VzZS5jb20+IHdyb3Rl
OgoKPiBPbiA3LjA1LjE5INCzLiAxNzoxMiDRhy4sIEFuZHJlYXMgU2Nod2FiIHdyb3RlOgo+PiBP
biBNYWkgMDcgMjAxOSwgTmlrb2xheSBCb3Jpc292IDxuYm9yaXNvdkBzdXNlLmNvbT4gd3JvdGU6
Cj4+IAo+Pj4gQXQgdGhlIHZlcnkgbGVhc3QgdGhlIGNvZGUgdW5kZXIKPj4+IG5vX2NvbnRleHQg
bGFiZWwgY291bGQgZ28gaW50byBpdCdzIG93biBmdW5jdGlvbiBzaW5jZSBpdCBqdXN0IGtpbGxz
IHRoZQo+Pj4gcHJvY2VzcyBhbmQgbmV2ZXIgcmV0dXJucz8KPj4gCj4+IFRoaXMgaXMgbm90IHRy
dWUuCj4KPiBCZSBtb3JlIHNwZWNpZmljLCBhY2NvcmRpbmcgdG8gZG9fdGFza19kZWFkIGFmdGVy
IHRoZSBsYXN0IF9fc2NoZWR1bGUgaXMKPiBjYWxsZWQgdGhlIGNhbGxpbmcgY29udGV4dCBpcyBu
byBtb3JlPwoKCS8qIEFyZSB3ZSBwcmVwYXJlZCB0byBoYW5kbGUgdGhpcyBrZXJuZWwgZmF1bHQ/
ICovCglpZiAoZml4dXBfZXhjZXB0aW9uKHJlZ3MpKQoJCXJldHVybjsKCkFuZHJlYXMuCgotLSAK
QW5kcmVhcyBTY2h3YWIsIFNVU0UgTGFicywgc2Nod2FiQHN1c2UuZGUKR1BHIEtleSBmaW5nZXJw
cmludCA9IDAxOTYgQkFEOCAxQ0U5IDE5NzAgRjRCRSAgMTc0OCBFNEQ0IDg4RTMgMEVFQSBCOUQ3
CiJBbmQgbm93IGZvciBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQuIgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGlu
ZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
