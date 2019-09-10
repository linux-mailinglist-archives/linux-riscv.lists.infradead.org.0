Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D0AE542
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 10:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsZFE8hbnLXQnzbsGjT9hnJnUw8dEnRPyuEWjiPkPpU=; b=Wu288cQaoQ+/vW
	xlnd9wj1aMZM5AUtZ+L36vXa3uuYWLTpvH2ceugn1GtR7JoFn+flrJWmXWD3L3RoNtoEVq3j5/cVU
	zMfaSb8zUkbc8umc549oCFGT1hRwnEy+emVt15tVD1FHQHwJ2yj92t4A7WQl9m+j2HBPkvnUEdM9/
	7DGB4jCZrmfUhr2bZ7IPq7w4XKsV0XoiMb00acucNBezYCgSDr5EnTnh9Afss+SVP1TLqxsoWNZmd
	U8kEqF/C97vtrAgBG4Ko+Xad8GpnLvW4EPEPqTnE5oMaES2ovdpTKNaha5Kyltq9e86+QAIaRK5OC
	rHnZoZ+1UUkVqPTkRdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7bLy-0002O9-PE; Tue, 10 Sep 2019 08:18:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7bLt-0002NV-Ad
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 08:18:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BF5CFAE35;
 Tue, 10 Sep 2019 08:18:15 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de>
X-Yow: I'll clean your ROOM!!  I know some GOOD stories, too!!  All about
 ROAD Island's, HUSH Puppies, and how LUKE finds GOLD on his LAND!!
Date: Tue, 10 Sep 2019 10:18:15 +0200
In-Reply-To: <20190910070503.GA31743@lst.de> (Christoph Hellwig's message of
 "Tue, 10 Sep 2019 09:05:03 +0200")
Message-ID: <mvmzhjcr2d4.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_011817_703666_E9CE6147 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, jslaby@suse.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2VwIDEwIDIwMTksIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKCj4g
T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDg6NTc6MzdBTSArMDIwMCwgQW5kcmVhcyBTY2h3YWIg
d3JvdGU6Cj4+IE9uIFNlcCAxMCAyMDE5LCBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4g
d3JvdGU6Cj4+IAo+PiA+IFRoZSBzaWZpdmUgc2VyaWFsIGRyaXZlciBpbXBsZW1lbnRzIGVhcmx5
Y29uIHN1cHBvcnQsCj4+IAo+PiBJdCBzaG91bGQgcHJvYmFibHkgYmUgZG9jdW1lbnRlZCBpbiBh
ZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQuCj4KPiBIb3cgc28/ICBX0ZZ0aCBPRiBh
bmQgYSBzdGRvdXQgcGF0aCB5b3UganVzdCBzZXQgZWFybHljb24gb24gdGhlCj4gY29tbWFuZCBs
aW5lIHdpdGhvdXQgYW55IGFyZ3VtZW50cyBhbmQgaXQgd2lsbCBiZSBmb3VuZC4KCkRvZXNuJ3Qg
d29yayBmb3IgbWUuCgpbICAgIDAuMDAwMDAwXSBNYWxmb3JtZWQgZWFybHkgb3B0aW9uICdlYXJs
eWNvbicKCkFuZHJlYXMuCgotLSAKQW5kcmVhcyBTY2h3YWIsIFNVU0UgTGFicywgc2Nod2FiQHN1
c2UuZGUKR1BHIEtleSBmaW5nZXJwcmludCA9IDAxOTYgQkFEOCAxQ0U5IDE5NzAgRjRCRSAgMTc0
OCBFNEQ0IDg4RTMgMEVFQSBCOUQ3CiJBbmQgbm93IGZvciBzb21ldGhpbmcgY29tcGxldGVseSBk
aWZmZXJlbnQuIgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNj
dgo=
