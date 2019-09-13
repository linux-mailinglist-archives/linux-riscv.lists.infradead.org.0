Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B3CB26C3
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 22:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=q/KTPuAsI5mgEU3HfSQJrtJlEnMGFp82oDqEGvd7Vdw=; b=YMWtFRnCEQx5kuVSk3AMCTH60
	UyuZZq3HG8rLqfYuy1e/c1+sQJdQtJjej36tlNwvCzDjdhWXBv1OFkMrzad0/7Y4O43LTkjmUWjYf
	vmQFh6fY7INuQRkq5MEE3piB+zqvXkEAhchTA4hdsiQGjavtpoXE2VpOUdC3BYZ1M+eTzU2N+GSOC
	8alytReOYPT5iYBxGUf2oevGWPiQjUugfWsau/jnsMDU5PfJ3GfAkpdKg/6lQgKtEpTrz6qgww4Cg
	DRapGyD6SGehjGo4FmPu/I8fZY7dfWiZBDEm+c3+A1If3U6sAxGiC1dlvqDrJKI8NL81VEFYEUhaN
	ax7e00o8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8sMq-0008OT-9X; Fri, 13 Sep 2019 20:40:32 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8sMm-0008NH-Vv
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 20:40:30 +0000
Received: by mail-pf1-f195.google.com with SMTP id y22so18831924pfr.3
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 13:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=qU9A6qb+veDWW9PC+1djL9KV1hH5r1qd0AwYGNHfhBY=;
 b=W7M12vjzlqbzDL+QQsoyiSZv3eufKibUnXc3YUDO3gqweIUgHTAzbOUQBmVVOaNxJi
 2atuNUPi0eI6Ygro2cMWTGOESYpRXrFwc63y2If0MGHKIYqCTa1Zgf0MIhXeW9IADy+z
 Fwf+NMiVluzo4OlA4oDS+P7O8o28CjhLe4ts0tsTBpT2no1Qcrxx24QEsZKpljz8FgGd
 7d533nXHgYiz4GPJGCl/0UjMsVIg2wTeLz4rRTEo+dhzH+ul8hbephdZ0BhBrAbcjj22
 d/AGJBiArNLOx0EfLGGNcnZ4Ha2dd1x+c5ynZr95XUXONPlJX2kinWhH+rD3x2j1S9l3
 sOuw==
X-Gm-Message-State: APjAAAXyrtYj27DS6TGKKVsx54qRWrpfCBJyqOHdBnhpo9yATtvLuf81
 spKSWU6IjvmRBYp7sxXtRUAjWg==
X-Google-Smtp-Source: APXvYqwRwn0c+PmiWsgzZC28IXBATIqtHCXXHGwwyRxHek1xZzURFPAkB8G4vkaL2qShC9KYKXBgYA==
X-Received: by 2002:a63:f357:: with SMTP id t23mr45980721pgj.421.1568407227922; 
 Fri, 13 Sep 2019 13:40:27 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id u65sm33355649pfu.104.2019.09.13.13.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 13:40:27 -0700 (PDT)
Date: Fri, 13 Sep 2019 13:40:27 -0700 (PDT)
X-Google-Original-Date: Fri, 13 Sep 2019 13:39:43 PDT (-0700)
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
In-Reply-To: <20190910143630.GA6794@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de, Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-218f6b9f-bfd8-4adb-8147-298989494bcf@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_134029_054786_3C38F126 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Greg KH <gregkh@linuxfoundation.org>, schwab@suse.de, jslaby@suse.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAxMCBTZXAgMjAxOSAwNzozNjozMCBQRFQgKC0wNzAwKSwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTA6MTg6MTVBTSArMDIwMCwgQW5k
cmVhcyBTY2h3YWIgd3JvdGU6Cj4+ID4gSG93IHNvPyAgV9GWdGggT0YgYW5kIGEgc3Rkb3V0IHBh
dGggeW91IGp1c3Qgc2V0IGVhcmx5Y29uIG9uIHRoZQo+PiA+IGNvbW1hbmQgbGluZSB3aXRob3V0
IGFueSBhcmd1bWVudHMgYW5kIGl0IHdpbGwgYmUgZm91bmQuCj4+IAo+PiBEb2Vzbid0IHdvcmsg
Zm9yIG1lLgo+PiAKPj4gWyAgICAwLjAwMDAwMF0gTWFsZm9ybWVkIGVhcmx5IG9wdGlvbiAnZWFy
bHljb24nCj4KPiBUaGF0IGZ1bmN0aW9uYWxpdHkgaXMgaW1wbGVtZW50ZWQgYnkgcGFyYW1fc2V0
dXBfZWFybHljb24gYW5kCj4gZWFybHlfaW5pdF9kdF9zY2FuX2Nob3Nlbl9zdGRvdXQuICBDaGVj
ayB3aHkgdGhvc2UgYXJlbid0IGJ1aWx0IGludG8KPiB5b3VyIGtlcm5lbC4KCk9wZW5FbWJlZGRl
ZCBwYXNzZXMgImVhcmx5Y29uPXNiaSIsIHdoaWNoIEkgY2FuIGZpbmQgaW4gdGhlIGRvdW1lbnRh
dGlvbi4gIEkgCmNhbid0IGZpbmQgYW55dGhpbmcgYWJvdXQganVzdCAiZWFybHljb24iLiAgSSd2
ZSBzZW50IGEgcGF0Y2ggYWRkaW5nIHNiaSB0byB0aGUgCmxpc3Qgb2YgZWFybHljb24gYXJndW1l
bnRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
