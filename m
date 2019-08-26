Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779679CB3A
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 10:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cICLlNTa2HP0JDASHIxAdoR7P5y7sFZezPDE++x/5hs=; b=YqUZXRcooupDyn
	ssdFDtVeYk6oTkhLKNf6XiLvr9W20Farh3zmKqh7XdFLi0+BdHvpBzX1kz8YeDCUuzIu9vn7zNb1z
	ehjS9+a9WSC2130wnMGnIw5ZkjOo1xrsn/W2RM8R22WFdgBY3ZwAFDgPrKMArxMg2cT8pXFNgSpWp
	RCg+QQTr/RkqDVeJbD7rB1uHrpx4qnb7iTGMDUSioXsWQVJSEH1sUT/QGl4LZybmyvrKaShjeG64j
	r4ljwLNKne6o78nNV9sutBUaqTUp6NYKbay0WCGKQHaUGL3ACJOz/BwQXzK6o3+N+Hfz1u8wDOcRR
	6Qp1cLUgp5q1iFrnt0AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29yf-0003bJ-0O; Mon, 26 Aug 2019 08:03:49 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29yb-0003ap-0t
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 08:03:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id m10so13369346qkk.1
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 01:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9WmdFRMJa7sCCIgAvCuC7Y0ayc92RRMOTHf0AFVOsB4=;
 b=hjLmh1l0PH6+OCtiZukj8qCTTPxtcbyQLCoRj3PDuhnLg7LMEKoUv25sj+qHt99CA8
 /9FAvgY31UpiNH4zmhPFTcLiC1i4mXin976/S46Ls3ct/UINT+pkYhr756uf6b0+mvCT
 gCYPaoFTk1/+hq9ZN7GzLptaA1C1OqEIVxzNYZhzePyPAdo03jhq5MUrW+lQo7G1y3k2
 SFVbYHyzm5Sr+j2xVZeeN6vaTy2Mo/kdtrp72LJmXrukKdlR2CH8dCra+z7EgeFWIoWM
 BFw6opkCP9fkWadA2dDXgOjsKKIgypPknsMYBC2Yqgdc/cSWYNzGJ5hCDe2WLQy3dyOg
 qxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9WmdFRMJa7sCCIgAvCuC7Y0ayc92RRMOTHf0AFVOsB4=;
 b=GIQG0qI0upiQh8lPBQcNdGrdGtjXn/Tl7Yi1CCMMH8rMRRH7Sh19mynzNkwh+oZccA
 YSeKKIdoIVv7qyvyj0qa+5Oxis4GFXoXTIZrYylm57gzZSTXnOJCo0um7NDoF0ZwDBzU
 +Achf56ZidrvXVei41Fqd8ddgTmVzcIy4vf2zn2GmIBCEi7D0g6cToSUrwEkUwVAnoMp
 9FM5aaw4YJNe8HZqAX0qbS204dbz43ZCfB5D0EiWUdp5azbfP8GzJ40VackjaC+MDvzO
 b5AYHyKQHVbpj1aAs39nI6ppnFqX/cgnk/4HvPoP0kCq8+MFtSppcr9TEt3KqFRuo7d6
 G+6w==
X-Gm-Message-State: APjAAAWdOZf2G5qt7TgYYrbYxqIFFHRVDZu+7CsWHtpeL4/RPwXqZd0n
 Ku5ioI+1ckx3GpM5OCWRm926gx4eEWmkRfAEQfI=
X-Google-Smtp-Source: APXvYqzAIrFcrQO5fBz+71rvYvLaxrpVM5bDSjpPpNr3XWFmfg1dE/uBhtyJb3PBjFZdbejw2RPeUafB4LJIAT54Bxc=
X-Received: by 2002:a05:620a:696:: with SMTP id
 f22mr15005145qkh.232.1566806622322; 
 Mon, 26 Aug 2019 01:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566540652.git.han_mao@c-sky.com>
 <820d80272fc5627b8d00e684663a614470217606.1566540652.git.han_mao@c-sky.com>
 <CAEbi=3fbe9zbsLyfA=s9gHtAFJrp5Ox0jWoAqcZudQ_xODicgA@mail.gmail.com>
 <CAJF2gTS80XU=4z-_=N=oGV6GH-+8KXCa74DyhVMcRxJRBq5g4A@mail.gmail.com>
In-Reply-To: <CAJF2gTS80XU=4z-_=N=oGV6GH-+8KXCa74DyhVMcRxJRBq5g4A@mail.gmail.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Mon, 26 Aug 2019 16:03:07 +0800
Message-ID: <CAEbi=3dtDy=CMRagVrj0ihtpYqS+4NkK7eYmn6Gn=2bV9khWVg@mail.gmail.com>
Subject: Re: [PATCH V5 1/3] riscv: Add perf callchain support
To: Guo Ren <guoren@kernel.org>, greentime.hu@sifive.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_010345_095136_EA42B517 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgR3VvLAoKR3VvIFJlbiA8Z3VvcmVuQGtlcm5lbC5vcmc+IOaWvCAyMDE55bm0OOaciDI05pel
IOmAseWFrSDkuIrljYg4OjU05a+r6YGT77yaCj4KPiBQbGVhc2UgY2hlY2sgQ09ORklHX0ZSQU1F
X1BPSU5URVIKPgo+IDEgKmZyYW1lID0gKigoc3RydWN0IHN0YWNrZnJhbWUgKilmcmFtZS0+ZnAg
LSAxKTsKPiBUaGlzIGNvZGUgaXMgb3JpZ2lvbmFsbHkgZnJvbSByaXNjdi9rZXJuZWwvc3RhY2t0
cmFjZS5jOiB3YWxrX3N0YWNrZnJhbWUKPgo+IEluIGxpbnV4L01ha2VmaWxlIGl0J2xsIGludm9s
dmUgdGhlIG9wdGlvbnMgZm9yIGdjYyB0byBkZWZpbml0ZWx5Cj4gc3RvcmUgcmEgJiBwcmV2X2Zw
IGluIGZwIHBvaW50ZXIuCj4gaWZkZWYgQ09ORklHX0ZSQU1FX1BPSU5URVIKPiBLQlVJTERfQ0ZM
QUdTICs9IC1mbm8tb21pdC1mcmFtZS1wb2ludGVyIC1mbm8tb3B0aW1pemUtc2libGluZy1jYWxs
cwo+Cj4gU28gLS1jYWxsLWdyYXBoIGZwIG5lZWQgZGVwZW5kcyBvbiBDT05GSUdfRlJBTUVfUE9J
TlRFUi4KPgoKSSBhbSBwcmV0dHkgc3VyZSBDT05GSUdfRlJBTUVfUE9JTlRFUiBpcyBZCiMgemNh
dCAvcHJvYy9jb25maWcuZ3ogfGdyZXAgQ09ORklHX0ZSQU1FX1BPSU5URVIKQ09ORklHX0ZSQU1F
X1BPSU5URVI9eQoKVGhpcyBpcyBub3QgZ29pbmcgdG8gZ28gd3JvbmcgZXZlcnkgdGltZSwgdGhl
IHByb2JhYmlsaXR5IG9mIGVycm9yIGlzCmFib3V0IG9uZSB0ZW50aCBvciBvbmUgcXVhcnRlci4g
cmFuZG9tbHkKVGhlcmUgbWF5IGJlIHNvbWUgY29uZGl0aW9ucyB0aGF0IHdlIGhhdmUgbm90IGNv
bnNpZGVyZWQuCgpJIGFkZCBvbmUgbW9yZSBjb25kaXRpb24gdG8gY2hlY2sgaWYgaXQgaXMgYSB2
YWxpZCB2aXJ0dWFsIGFkZHJlc3MgYW5kCml0KCAuL3BlcmYgcmVjb3JkIC1lIGNwdS1jbG9jayAt
LWNhbGwtZ3JhcGggZnAgbHMpIHBhc3NlcyAxMDAwIHRpbWVzCndpdGhvdXQgZmFpbHVyZSBpbiBV
bmxlYXNoZWQgYm9hcmQgYmFzZWQgb24gNS4zLXJjNS4KSGVyZSBpcyBteSBwYXRjaC4gUGxlYXNl
IGhhdmUgIGEgbG9vayBhdCBpdC4gSSBhbSBub3Qgc3VyZSBpZiBpdCBpcyBhCmdvb2Qgc29sdXRp
b24uCgpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvcGVyZl9jYWxsY2hhaW4uYwpiL2Fy
Y2gvcmlzY3Yva2VybmVsL3BlcmZfY2FsbGNoYWluLmMKaW5kZXggZDc1ZDE1YzEzZGM3Li40NzE3
OTQyNDM1ZGYgMTAwNjQ0Ci0tLSBhL2FyY2gvcmlzY3Yva2VybmVsL3BlcmZfY2FsbGNoYWluLmMK
KysrIGIvYXJjaC9yaXNjdi9rZXJuZWwvcGVyZl9jYWxsY2hhaW4uYwpAQCAtMTgsNiArMTgsOCBA
QCBzdGF0aWMgaW50IHVud2luZF9mcmFtZV9rZXJuZWwoc3RydWN0IHN0YWNrZnJhbWUgKmZyYW1l
KQogICAgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKICAgICAgICBpZiAoZnJhbWUtPmZwIDwg
Q09ORklHX1BBR0VfT0ZGU0VUKQogICAgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKKyAgICAg
ICBpZiAoIXZpcnRfYWRkcl92YWxpZChmcmFtZS0+ZnApKQorICAgICAgICAgICAgICAgcmV0dXJu
IC1FUEVSTTsKCiAgICAgICAgKmZyYW1lID0gKigoc3RydWN0IHN0YWNrZnJhbWUgKilmcmFtZS0+
ZnAgLSAxKTsKICAgICAgICBpZiAoX19rZXJuZWxfdGV4dF9hZGRyZXNzKGZyYW1lLT5yYSkpIHsK
Ckl0IGNvdWxkIGNhdGNoIGNhc2VzIGNhbGxlZCBpbiB0aGlzIHdheS4KClsgMTM4MS45MzY1ODZd
IGZyYW1lLT5mcD06ZmZmZmZmZmYwMDU0NzU1MApbIDEzODIuMDM4NTQyXSBDUFU6IDEgUElEOiAx
MzUgQ29tbTogbHMgTm90IHRhaW50ZWQKNS4zLjAtcmM1LTAwMDAzLWdiMDA4ZjZiY2Q2N2MtZGly
dHkgIzE0ClsgMTM4Mi4zMDc0NDBdIENhbGwgVHJhY2U6ClsgMTM4Mi4zODg5NDddIFs8ZmZmZmZm
ZTAwMDJhMmQ4ZT5dIHdhbGtfc3RhY2tmcmFtZSsweDAvMHg5YQpbIDEzODIuNTY4MDUzXSBbPGZm
ZmZmZmUwMDAyYTJmNWE+XSBzaG93X3N0YWNrKzB4MmEvMHgzNApbIDEzODIuNzM1OTYwXSBbPGZm
ZmZmZmUwMDA4M2RjZDY+XSBkdW1wX3N0YWNrKzB4NjIvMHg3YwpbIDEzODIuOTAzODYzXSBbPGZm
ZmZmZmUwMDAyYTQ5ZTA+XSBwZXJmX2NhbGxjaGFpbl9rZXJuZWwrMHhkOC8weDEwMgpbIDEzODMu
MTA2NTU4XSBbPGZmZmZmZmUwMDAzNDBhNmU+XSBnZXRfcGVyZl9jYWxsY2hhaW4rMHgxMzYvMHgx
ZjIKWyAxMzgzLjMwMzEyOF0gWzxmZmZmZmZlMDAwMzNkNDgwPl0gcGVyZl9jYWxsY2hhaW4rMHg1
Mi8weDZlClsgMTM4My40ODI1NTNdIFs8ZmZmZmZmZTAwMDMzZDUwYT5dIHBlcmZfcHJlcGFyZV9z
YW1wbGUrMHg2ZS8weDQ3NgpbIDEzODMuNjc5MzU3XSBbPGZmZmZmZmUwMDAzM2Q5MmU+XSBwZXJm
X2V2ZW50X291dHB1dF9mb3J3YXJkKzB4MWMvMHg1MApbIDEzODMuODkwNjMzXSBbPGZmZmZmZmUw
MDAzMzhiNGM+XSBfX3BlcmZfZXZlbnRfb3ZlcmZsb3crMHg2YS8weGE0ClsgMTM4NC4wOTAyNzld
IFs8ZmZmZmZmZTAwMDMzOGM0MD5dIHBlcmZfc3dldmVudF9ocnRpbWVyKzB4YmEvMHgxMDYKWyAx
Mzg0LjI5MDA5NF0gWzxmZmZmZmZlMDAwMmYzMDdjPl0gX19ocnRpbWVyX3J1bl9xdWV1ZXMrMHg4
NC8weDEwOApbIDEzODQuNDg5Njk0XSBbPGZmZmZmZmUwMDAyZjM2Yjg+XSBocnRpbWVyX2ludGVy
cnVwdCsweGNhLzB4MWNlClsgMTM4NC42ODA5NzRdIFs8ZmZmZmZmZTAwMDcyZjU3Mj5dIHJpc2N2
X3RpbWVyX2ludGVycnVwdCsweDMyLzB4M2EKWyAxMzg0Ljg4MDQ0OV0gWzxmZmZmZmZlMDAwODU0
YjM0Pl0gZG9fSVJRKzB4NjQvMHhiZQpbIDEzODUuMDM2Njk4XSBbPGZmZmZmZmUwMDAyYTFjNWM+
XSByZXRfZnJvbV9leGNlcHRpb24rMHgwLzB4YwoKWzEzOTE1LjY5Nzk4OV0gZnJhbWUtPmZwPTpm
ZmZmZmZmZmZmZmZmMDAwClsxMzkxNS43OTk5MzddIENQVTogMiBQSUQ6IDY2MyBDb21tOiBscyBO
b3QgdGFpbnRlZAo1LjMuMC1yYzUtMDAwMDMtZ2IwMDhmNmJjZDY3Yy1kaXJ0eSAjMTQKWzEzOTE2
LjA2ODgzMl0gQ2FsbCBUcmFjZToKWzEzOTE2LjE1MDM4MF0gWzxmZmZmZmZlMDAwMmEyZDhlPl0g
d2Fsa19zdGFja2ZyYW1lKzB4MC8weDlhClsxMzkxNi4zMjk0NTBdIFs8ZmZmZmZmZTAwMDJhMmY1
YT5dIHNob3dfc3RhY2srMHgyYS8weDM0ClsxMzkxNi40OTczNjBdIFs8ZmZmZmZmZTAwMDgzZGNk
Nj5dIGR1bXBfc3RhY2srMHg2Mi8weDdjClsxMzkxNi42NjUyNjVdIFs8ZmZmZmZmZTAwMDJhNDll
MD5dIHBlcmZfY2FsbGNoYWluX2tlcm5lbCsweGQ4LzB4MTAyClsxMzkxNi44Njc5NDldIFs8ZmZm
ZmZmZTAwMDM0MGE2ZT5dIGdldF9wZXJmX2NhbGxjaGFpbisweDEzNi8weDFmMgpbMTM5MTcuMDY0
NTI2XSBbPGZmZmZmZmUwMDAzM2Q0ODA+XSBwZXJmX2NhbGxjaGFpbisweDUyLzB4NmUKWzEzOTE3
LjI0Mzk1MF0gWzxmZmZmZmZlMDAwMzNkNTBhPl0gcGVyZl9wcmVwYXJlX3NhbXBsZSsweDZlLzB4
NDc2ClsxMzkxNy40NDA3NTldIFs8ZmZmZmZmZTAwMDMzZDkyZT5dIHBlcmZfZXZlbnRfb3V0cHV0
X2ZvcndhcmQrMHgxYy8weDUwClsxMzkxNy42NTIwMjFdIFs8ZmZmZmZmZTAwMDMzOGI0Yz5dIF9f
cGVyZl9ldmVudF9vdmVyZmxvdysweDZhLzB4YTQKWzEzOTE3Ljg1MTY4M10gWzxmZmZmZmZlMDAw
MzM4YzQwPl0gcGVyZl9zd2V2ZW50X2hydGltZXIrMHhiYS8weDEwNgpbMTM5MTguMDUxNDk0XSBb
PGZmZmZmZmUwMDAyZjMwN2M+XSBfX2hydGltZXJfcnVuX3F1ZXVlcysweDg0LzB4MTA4ClsxMzkx
OC4yNTEwOTRdIFs8ZmZmZmZmZTAwMDJmMzZiOD5dIGhydGltZXJfaW50ZXJydXB0KzB4Y2EvMHgx
Y2UKWzEzOTE4LjQ0MjM3OV0gWzxmZmZmZmZlMDAwNzJmNTcyPl0gcmlzY3ZfdGltZXJfaW50ZXJy
dXB0KzB4MzIvMHgzYQpbMTM5MTguNjQxODQwXSBbPGZmZmZmZmUwMDA4NTRiMzQ+XSBkb19JUlEr
MHg2NC8weGJlClsxMzkxOC43OTgwODJdIFs8ZmZmZmZmZTAwMDJhMWM1Yz5dIHJldF9mcm9tX2V4
Y2VwdGlvbisweDAvMHhjCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJpc2N2Cg==
